part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.initial() = _InitialNewsEvent;
  const factory NewsEvent.selectCategory({required int id}) =
      _SelectCategoryEvent;
}
