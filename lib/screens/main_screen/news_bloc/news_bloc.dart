import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:value_listanable_example/data/repository/repository.dart';
import 'package:value_listanable_example/data/server_api/models/models/article.dart';
import 'package:value_listanable_example/data/server_api/models/models/category.dart';

part 'news_state.dart';
part 'news_event.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState.initial());
  final _repository = Repository();
  List<Article> _articles = [];
  List<Category> _category = [];
  String? _locale;

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    yield* event.map(
      initial: _mapInitialNewsScreenEvent,
      selectCategory: _mapSelectCategoryEvent,
    );
  }

  Stream<NewsState> _mapInitialNewsScreenEvent(_InitialNewsEvent event) async* {
    yield NewsState.loading();
    try {
      _locale = event.locale;
      List<Category> _allCategory = await _repository.getAllCategory(_locale!);
      _articles = await _repository.getArticles(_locale!);
      _category = getCategoryByLang(_locale!, _allCategory);
      yield NewsState.data(category: _category, articles: _articles);
    } catch (e) {
      yield NewsState.loadFailure(message: e.toString());
    }
  }

  Stream<NewsState> _mapSelectCategoryEvent(_SelectCategoryEvent event) async* {
    yield NewsState.loading();
    _articles = [];
    int _counter = 0;
    try {
      for (var i in _category) {
        if (i.id == event.id) {
          i.active = !i.active;
          if (i.id == 99 && i.active) {
            allCategorySelect(_category);
            _articles = await _repository.getArticles(_locale!);
            _counter++;
          }
        }
        if (i.active && i.id != 99) {
          _category.first.active = false;
          _counter++;
          _articles += await _repository.getFilterDate(i.id, _locale!);
        }
      }
      if (_counter == 0) {
        _category.first.active = true;
        allCategorySelect(_category);
        _articles = await _repository.getArticles(_locale!);
      }
      yield NewsState.data(category: _category, articles: _articles);
    } catch (e) {
      yield NewsState.loadFailure(message: e.toString());
    }
  }
}
