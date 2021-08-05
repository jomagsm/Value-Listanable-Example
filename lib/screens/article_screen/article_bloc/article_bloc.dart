import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:value_listanable_example/data/repository/repository.dart';
import 'package:value_listanable_example/data/server_api/models/models/article.dart';

part 'article_state.dart';
part 'article_event.dart';
part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  late Article _article;
  final _repository = Repository();
  ArticleBloc() : super(ArticleState.initial());

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    yield* event.map(
      initial: _mapInitialArticleEvent,
    );
  }

  Stream<ArticleState> _mapInitialArticleEvent(
      _InitialArticleEvent event) async* {
    yield ArticleState.loading();
    try {
      _article = await _repository.getArticleById(event.idArticle);
      yield ArticleState.data(article: _article);
    } catch (e) {
      yield ArticleState.loadFailure(message: e.toString());
    }
  }
}
