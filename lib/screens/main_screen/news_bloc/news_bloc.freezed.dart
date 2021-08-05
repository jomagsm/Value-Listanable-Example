// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _InitialNewsState initial() {
    return const _InitialNewsState();
  }

  _LoadingNewsState loading() {
    return const _LoadingNewsState();
  }

  _DataNewsState data(
      {required List<Category> category, required List<Article> articles}) {
    return _DataNewsState(
      category: category,
      articles: articles,
    );
  }

  _LoadFailureNewsState loadFailure() {
    return const _LoadFailureNewsState();
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> category, List<Article> articles)
        data,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> category, List<Article> articles)? data,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_DataNewsState value) data,
    required TResult Function(_LoadFailureNewsState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_DataNewsState value)? data,
    TResult Function(_LoadFailureNewsState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class _$InitialNewsStateCopyWith<$Res> {
  factory _$InitialNewsStateCopyWith(
          _InitialNewsState value, $Res Function(_InitialNewsState) then) =
      __$InitialNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$InitialNewsStateCopyWith<$Res> {
  __$InitialNewsStateCopyWithImpl(
      _InitialNewsState _value, $Res Function(_InitialNewsState) _then)
      : super(_value, (v) => _then(v as _InitialNewsState));

  @override
  _InitialNewsState get _value => super._value as _InitialNewsState;
}

/// @nodoc

class _$_InitialNewsState implements _InitialNewsState {
  const _$_InitialNewsState();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> category, List<Article> articles)
        data,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> category, List<Article> articles)? data,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_DataNewsState value) data,
    required TResult Function(_LoadFailureNewsState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_DataNewsState value)? data,
    TResult Function(_LoadFailureNewsState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNewsState implements NewsState {
  const factory _InitialNewsState() = _$_InitialNewsState;
}

/// @nodoc
abstract class _$LoadingNewsStateCopyWith<$Res> {
  factory _$LoadingNewsStateCopyWith(
          _LoadingNewsState value, $Res Function(_LoadingNewsState) then) =
      __$LoadingNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingNewsStateCopyWith<$Res> {
  __$LoadingNewsStateCopyWithImpl(
      _LoadingNewsState _value, $Res Function(_LoadingNewsState) _then)
      : super(_value, (v) => _then(v as _LoadingNewsState));

  @override
  _LoadingNewsState get _value => super._value as _LoadingNewsState;
}

/// @nodoc

class _$_LoadingNewsState implements _LoadingNewsState {
  const _$_LoadingNewsState();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> category, List<Article> articles)
        data,
    required TResult Function() loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> category, List<Article> articles)? data,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_DataNewsState value) data,
    required TResult Function(_LoadFailureNewsState value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_DataNewsState value)? data,
    TResult Function(_LoadFailureNewsState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingNewsState implements NewsState {
  const factory _LoadingNewsState() = _$_LoadingNewsState;
}

/// @nodoc
abstract class _$DataNewsStateCopyWith<$Res> {
  factory _$DataNewsStateCopyWith(
          _DataNewsState value, $Res Function(_DataNewsState) then) =
      __$DataNewsStateCopyWithImpl<$Res>;
  $Res call({List<Category> category, List<Article> articles});
}

/// @nodoc
class __$DataNewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$DataNewsStateCopyWith<$Res> {
  __$DataNewsStateCopyWithImpl(
      _DataNewsState _value, $Res Function(_DataNewsState) _then)
      : super(_value, (v) => _then(v as _DataNewsState));

  @override
  _DataNewsState get _value => super._value as _DataNewsState;

  @override
  $Res call({
    Object? category = freezed,
    Object? articles = freezed,
  }) {
    return _then(_DataNewsState(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_DataNewsState implements _DataNewsState {
  const _$_DataNewsState({required this.category, required this.articles});

  @override
  final List<Category> category;
  @override
  final List<Article> articles;

  @override
  String toString() {
    return 'NewsState.data(category: $category, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataNewsState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(articles);

  @JsonKey(ignore: true)
  @override
  _$DataNewsStateCopyWith<_DataNewsState> get copyWith =>
      __$DataNewsStateCopyWithImpl<_DataNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> category, List<Article> articles)
        data,
    required TResult Function() loadFailure,
  }) {
    return data(category, articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> category, List<Article> articles)? data,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(category, articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_DataNewsState value) data,
    required TResult Function(_LoadFailureNewsState value) loadFailure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_DataNewsState value)? data,
    TResult Function(_LoadFailureNewsState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataNewsState implements NewsState {
  const factory _DataNewsState(
      {required List<Category> category,
      required List<Article> articles}) = _$_DataNewsState;

  List<Category> get category => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataNewsStateCopyWith<_DataNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureNewsStateCopyWith<$Res> {
  factory _$LoadFailureNewsStateCopyWith(_LoadFailureNewsState value,
          $Res Function(_LoadFailureNewsState) then) =
      __$LoadFailureNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadFailureNewsStateCopyWith<$Res> {
  __$LoadFailureNewsStateCopyWithImpl(
      _LoadFailureNewsState _value, $Res Function(_LoadFailureNewsState) _then)
      : super(_value, (v) => _then(v as _LoadFailureNewsState));

  @override
  _LoadFailureNewsState get _value => super._value as _LoadFailureNewsState;
}

/// @nodoc

class _$_LoadFailureNewsState implements _LoadFailureNewsState {
  const _$_LoadFailureNewsState();

  @override
  String toString() {
    return 'NewsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailureNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> category, List<Article> articles)
        data,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> category, List<Article> articles)? data,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_DataNewsState value) data,
    required TResult Function(_LoadFailureNewsState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_DataNewsState value)? data,
    TResult Function(_LoadFailureNewsState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureNewsState implements NewsState {
  const factory _LoadFailureNewsState() = _$_LoadFailureNewsState;
}

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  _InitialNewsEvent initial({required String locale}) {
    return _InitialNewsEvent(
      locale: locale,
    );
  }

  _SelectCategoryEvent selectCategory({required int id}) {
    return _SelectCategoryEvent(
      id: id,
    );
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) initial,
    required TResult Function(int id) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? initial,
    TResult Function(int id)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsEvent value) initial,
    required TResult Function(_SelectCategoryEvent value) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsEvent value)? initial,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class _$InitialNewsEventCopyWith<$Res> {
  factory _$InitialNewsEventCopyWith(
          _InitialNewsEvent value, $Res Function(_InitialNewsEvent) then) =
      __$InitialNewsEventCopyWithImpl<$Res>;
  $Res call({String locale});
}

/// @nodoc
class __$InitialNewsEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res>
    implements _$InitialNewsEventCopyWith<$Res> {
  __$InitialNewsEventCopyWithImpl(
      _InitialNewsEvent _value, $Res Function(_InitialNewsEvent) _then)
      : super(_value, (v) => _then(v as _InitialNewsEvent));

  @override
  _InitialNewsEvent get _value => super._value as _InitialNewsEvent;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_InitialNewsEvent(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialNewsEvent implements _InitialNewsEvent {
  const _$_InitialNewsEvent({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'NewsEvent.initial(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialNewsEvent &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$InitialNewsEventCopyWith<_InitialNewsEvent> get copyWith =>
      __$InitialNewsEventCopyWithImpl<_InitialNewsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) initial,
    required TResult Function(int id) selectCategory,
  }) {
    return initial(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? initial,
    TResult Function(int id)? selectCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsEvent value) initial,
    required TResult Function(_SelectCategoryEvent value) selectCategory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsEvent value)? initial,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNewsEvent implements NewsEvent {
  const factory _InitialNewsEvent({required String locale}) =
      _$_InitialNewsEvent;

  String get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialNewsEventCopyWith<_InitialNewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectCategoryEventCopyWith<$Res> {
  factory _$SelectCategoryEventCopyWith(_SelectCategoryEvent value,
          $Res Function(_SelectCategoryEvent) then) =
      __$SelectCategoryEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$SelectCategoryEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res>
    implements _$SelectCategoryEventCopyWith<$Res> {
  __$SelectCategoryEventCopyWithImpl(
      _SelectCategoryEvent _value, $Res Function(_SelectCategoryEvent) _then)
      : super(_value, (v) => _then(v as _SelectCategoryEvent));

  @override
  _SelectCategoryEvent get _value => super._value as _SelectCategoryEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SelectCategoryEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectCategoryEvent implements _SelectCategoryEvent {
  const _$_SelectCategoryEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'NewsEvent.selectCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectCategoryEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SelectCategoryEventCopyWith<_SelectCategoryEvent> get copyWith =>
      __$SelectCategoryEventCopyWithImpl<_SelectCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) initial,
    required TResult Function(int id) selectCategory,
  }) {
    return selectCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? initial,
    TResult Function(int id)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsEvent value) initial,
    required TResult Function(_SelectCategoryEvent value) selectCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsEvent value)? initial,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategoryEvent implements NewsEvent {
  const factory _SelectCategoryEvent({required int id}) =
      _$_SelectCategoryEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectCategoryEventCopyWith<_SelectCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
