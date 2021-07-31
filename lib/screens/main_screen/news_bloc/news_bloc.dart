import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:value_listanable_example/data/server_api/models/article.dart';

part 'news_state.dart';
part 'news_event.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState.initial());
  List<Article> _articles = [];
  final List<String> _category = [
    'Собрания и конференции',
    'Технические новости',
    'Другие новости',
    'Важное'
  ];

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    yield* event.map(
      initial: _mapInitialNewsScreenEvent,
    );
  }

  Stream<NewsState> _mapInitialNewsScreenEvent(_InitialNewsEvent event) async* {
    yield NewsState.loading();
    _articles = createData();
    // yield NewsState.category(category: _category);
    yield NewsState.data(category: _category, articles: _articles);
  }
}
