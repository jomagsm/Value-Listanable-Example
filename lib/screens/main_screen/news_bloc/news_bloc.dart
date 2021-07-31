import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:value_listanable_example/data/repository/repository.dart';
import 'package:value_listanable_example/data/server_api/models/article.dart';
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

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    yield* event.map(
      initial: _mapInitialNewsScreenEvent,
    );
  }

  Stream<NewsState> _mapInitialNewsScreenEvent(_InitialNewsEvent event) async* {
    yield NewsState.loading();
    _articles = await _repository.getArticles(1);
    _category = await _repository.getCategory();
    print(_articles);
    // _articles = createData();
    // yield NewsState.category(category: _category);
    yield NewsState.data(category: _category, articles: _articles);
  }
}
