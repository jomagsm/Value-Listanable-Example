part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _InitialArticleState;
  const factory ArticleState.loading() = _LoadingArticleState;
  const factory ArticleState.data({required Article article}) = _DataArticleState;
  const factory ArticleState.loadFailure({required String message}) = _LoadFailureArticleState;

}