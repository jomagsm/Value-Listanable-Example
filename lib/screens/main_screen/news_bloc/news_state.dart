part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _InitialNewsState;
  const factory NewsState.loading() = _LoadingNewsState;
  const factory NewsState.data(
      {required List<Category> category,
      required List<Article> articles}) = _DataNewsState;
  const factory NewsState.loadFailure({required String message}) = _LoadFailureNewsState;
}
