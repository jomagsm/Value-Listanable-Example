// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

  _InitialArticleState initial() {
    return const _InitialArticleState();
  }

  _LoadingArticleState loading() {
    return const _LoadingArticleState();
  }

  _DataArticleState data({required Article article}) {
    return _DataArticleState(
      article: article,
    );
  }

  _LoadFailureArticleState loadFailure({required String message}) {
    return _LoadFailureArticleState(
      message: message,
    );
  }
}

/// @nodoc
const $ArticleState = _$ArticleStateTearOff();

/// @nodoc
mixin _$ArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article article) data,
    required TResult Function(String message) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article article)? data,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialArticleState value) initial,
    required TResult Function(_LoadingArticleState value) loading,
    required TResult Function(_DataArticleState value) data,
    required TResult Function(_LoadFailureArticleState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleState value)? initial,
    TResult Function(_LoadingArticleState value)? loading,
    TResult Function(_DataArticleState value)? data,
    TResult Function(_LoadFailureArticleState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;
}

/// @nodoc
abstract class _$InitialArticleStateCopyWith<$Res> {
  factory _$InitialArticleStateCopyWith(_InitialArticleState value,
          $Res Function(_InitialArticleState) then) =
      __$InitialArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$InitialArticleStateCopyWith<$Res> {
  __$InitialArticleStateCopyWithImpl(
      _InitialArticleState _value, $Res Function(_InitialArticleState) _then)
      : super(_value, (v) => _then(v as _InitialArticleState));

  @override
  _InitialArticleState get _value => super._value as _InitialArticleState;
}

/// @nodoc

class _$_InitialArticleState implements _InitialArticleState {
  const _$_InitialArticleState();

  @override
  String toString() {
    return 'ArticleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialArticleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article article) data,
    required TResult Function(String message) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article article)? data,
    TResult Function(String message)? loadFailure,
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
    required TResult Function(_InitialArticleState value) initial,
    required TResult Function(_LoadingArticleState value) loading,
    required TResult Function(_DataArticleState value) data,
    required TResult Function(_LoadFailureArticleState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleState value)? initial,
    TResult Function(_LoadingArticleState value)? loading,
    TResult Function(_DataArticleState value)? data,
    TResult Function(_LoadFailureArticleState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialArticleState implements ArticleState {
  const factory _InitialArticleState() = _$_InitialArticleState;
}

/// @nodoc
abstract class _$LoadingArticleStateCopyWith<$Res> {
  factory _$LoadingArticleStateCopyWith(_LoadingArticleState value,
          $Res Function(_LoadingArticleState) then) =
      __$LoadingArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$LoadingArticleStateCopyWith<$Res> {
  __$LoadingArticleStateCopyWithImpl(
      _LoadingArticleState _value, $Res Function(_LoadingArticleState) _then)
      : super(_value, (v) => _then(v as _LoadingArticleState));

  @override
  _LoadingArticleState get _value => super._value as _LoadingArticleState;
}

/// @nodoc

class _$_LoadingArticleState implements _LoadingArticleState {
  const _$_LoadingArticleState();

  @override
  String toString() {
    return 'ArticleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingArticleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article article) data,
    required TResult Function(String message) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article article)? data,
    TResult Function(String message)? loadFailure,
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
    required TResult Function(_InitialArticleState value) initial,
    required TResult Function(_LoadingArticleState value) loading,
    required TResult Function(_DataArticleState value) data,
    required TResult Function(_LoadFailureArticleState value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleState value)? initial,
    TResult Function(_LoadingArticleState value)? loading,
    TResult Function(_DataArticleState value)? data,
    TResult Function(_LoadFailureArticleState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingArticleState implements ArticleState {
  const factory _LoadingArticleState() = _$_LoadingArticleState;
}

/// @nodoc
abstract class _$DataArticleStateCopyWith<$Res> {
  factory _$DataArticleStateCopyWith(
          _DataArticleState value, $Res Function(_DataArticleState) then) =
      __$DataArticleStateCopyWithImpl<$Res>;
  $Res call({Article article});
}

/// @nodoc
class __$DataArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$DataArticleStateCopyWith<$Res> {
  __$DataArticleStateCopyWithImpl(
      _DataArticleState _value, $Res Function(_DataArticleState) _then)
      : super(_value, (v) => _then(v as _DataArticleState));

  @override
  _DataArticleState get _value => super._value as _DataArticleState;

  @override
  $Res call({
    Object? article = freezed,
  }) {
    return _then(_DataArticleState(
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }
}

/// @nodoc

class _$_DataArticleState implements _DataArticleState {
  const _$_DataArticleState({required this.article});

  @override
  final Article article;

  @override
  String toString() {
    return 'ArticleState.data(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataArticleState &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(article);

  @JsonKey(ignore: true)
  @override
  _$DataArticleStateCopyWith<_DataArticleState> get copyWith =>
      __$DataArticleStateCopyWithImpl<_DataArticleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article article) data,
    required TResult Function(String message) loadFailure,
  }) {
    return data(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article article)? data,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialArticleState value) initial,
    required TResult Function(_LoadingArticleState value) loading,
    required TResult Function(_DataArticleState value) data,
    required TResult Function(_LoadFailureArticleState value) loadFailure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleState value)? initial,
    TResult Function(_LoadingArticleState value)? loading,
    TResult Function(_DataArticleState value)? data,
    TResult Function(_LoadFailureArticleState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataArticleState implements ArticleState {
  const factory _DataArticleState({required Article article}) =
      _$_DataArticleState;

  Article get article => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataArticleStateCopyWith<_DataArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureArticleStateCopyWith<$Res> {
  factory _$LoadFailureArticleStateCopyWith(_LoadFailureArticleState value,
          $Res Function(_LoadFailureArticleState) then) =
      __$LoadFailureArticleStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoadFailureArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$LoadFailureArticleStateCopyWith<$Res> {
  __$LoadFailureArticleStateCopyWithImpl(_LoadFailureArticleState _value,
      $Res Function(_LoadFailureArticleState) _then)
      : super(_value, (v) => _then(v as _LoadFailureArticleState));

  @override
  _LoadFailureArticleState get _value =>
      super._value as _LoadFailureArticleState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoadFailureArticleState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadFailureArticleState implements _LoadFailureArticleState {
  const _$_LoadFailureArticleState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ArticleState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailureArticleState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureArticleStateCopyWith<_LoadFailureArticleState> get copyWith =>
      __$LoadFailureArticleStateCopyWithImpl<_LoadFailureArticleState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article article) data,
    required TResult Function(String message) loadFailure,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article article)? data,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialArticleState value) initial,
    required TResult Function(_LoadingArticleState value) loading,
    required TResult Function(_DataArticleState value) data,
    required TResult Function(_LoadFailureArticleState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleState value)? initial,
    TResult Function(_LoadingArticleState value)? loading,
    TResult Function(_DataArticleState value)? data,
    TResult Function(_LoadFailureArticleState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureArticleState implements ArticleState {
  const factory _LoadFailureArticleState({required String message}) =
      _$_LoadFailureArticleState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureArticleStateCopyWith<_LoadFailureArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ArticleEventTearOff {
  const _$ArticleEventTearOff();

  _InitialArticleEvent initial({required int idArticle}) {
    return _InitialArticleEvent(
      idArticle: idArticle,
    );
  }
}

/// @nodoc
const $ArticleEvent = _$ArticleEventTearOff();

/// @nodoc
mixin _$ArticleEvent {
  int get idArticle => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idArticle) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idArticle)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialArticleEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleEventCopyWith<ArticleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEventCopyWith<$Res> {
  factory $ArticleEventCopyWith(
          ArticleEvent value, $Res Function(ArticleEvent) then) =
      _$ArticleEventCopyWithImpl<$Res>;
  $Res call({int idArticle});
}

/// @nodoc
class _$ArticleEventCopyWithImpl<$Res> implements $ArticleEventCopyWith<$Res> {
  _$ArticleEventCopyWithImpl(this._value, this._then);

  final ArticleEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleEvent) _then;

  @override
  $Res call({
    Object? idArticle = freezed,
  }) {
    return _then(_value.copyWith(
      idArticle: idArticle == freezed
          ? _value.idArticle
          : idArticle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialArticleEventCopyWith<$Res>
    implements $ArticleEventCopyWith<$Res> {
  factory _$InitialArticleEventCopyWith(_InitialArticleEvent value,
          $Res Function(_InitialArticleEvent) then) =
      __$InitialArticleEventCopyWithImpl<$Res>;
  @override
  $Res call({int idArticle});
}

/// @nodoc
class __$InitialArticleEventCopyWithImpl<$Res>
    extends _$ArticleEventCopyWithImpl<$Res>
    implements _$InitialArticleEventCopyWith<$Res> {
  __$InitialArticleEventCopyWithImpl(
      _InitialArticleEvent _value, $Res Function(_InitialArticleEvent) _then)
      : super(_value, (v) => _then(v as _InitialArticleEvent));

  @override
  _InitialArticleEvent get _value => super._value as _InitialArticleEvent;

  @override
  $Res call({
    Object? idArticle = freezed,
  }) {
    return _then(_InitialArticleEvent(
      idArticle: idArticle == freezed
          ? _value.idArticle
          : idArticle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InitialArticleEvent implements _InitialArticleEvent {
  const _$_InitialArticleEvent({required this.idArticle});

  @override
  final int idArticle;

  @override
  String toString() {
    return 'ArticleEvent.initial(idArticle: $idArticle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialArticleEvent &&
            (identical(other.idArticle, idArticle) ||
                const DeepCollectionEquality()
                    .equals(other.idArticle, idArticle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(idArticle);

  @JsonKey(ignore: true)
  @override
  _$InitialArticleEventCopyWith<_InitialArticleEvent> get copyWith =>
      __$InitialArticleEventCopyWithImpl<_InitialArticleEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idArticle) initial,
  }) {
    return initial(idArticle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idArticle)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(idArticle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialArticleEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialArticleEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialArticleEvent implements ArticleEvent {
  const factory _InitialArticleEvent({required int idArticle}) =
      _$_InitialArticleEvent;

  @override
  int get idArticle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialArticleEventCopyWith<_InitialArticleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
