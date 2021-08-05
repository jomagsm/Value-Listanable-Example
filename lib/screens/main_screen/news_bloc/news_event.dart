part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.initial({required String locale}) = _InitialNewsEvent;
  const factory NewsEvent.selectCategory({required int id}) =
      _SelectCategoryEvent;
}
