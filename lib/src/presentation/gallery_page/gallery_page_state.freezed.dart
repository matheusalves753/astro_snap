// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<APODEntry> entries) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<APODEntry> entries)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<APODEntry> entries)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryPageDataState value) data,
    required TResult Function(GalleryPageLoadingState value) loading,
    required TResult Function(GalleryPageErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryPageDataState value)? data,
    TResult? Function(GalleryPageLoadingState value)? loading,
    TResult? Function(GalleryPageErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryPageDataState value)? data,
    TResult Function(GalleryPageLoadingState value)? loading,
    TResult Function(GalleryPageErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryPageStateCopyWith<$Res> {
  factory $GalleryPageStateCopyWith(
          GalleryPageState value, $Res Function(GalleryPageState) then) =
      _$GalleryPageStateCopyWithImpl<$Res, GalleryPageState>;
}

/// @nodoc
class _$GalleryPageStateCopyWithImpl<$Res, $Val extends GalleryPageState>
    implements $GalleryPageStateCopyWith<$Res> {
  _$GalleryPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GalleryPageDataStateImplCopyWith<$Res> {
  factory _$$GalleryPageDataStateImplCopyWith(_$GalleryPageDataStateImpl value,
          $Res Function(_$GalleryPageDataStateImpl) then) =
      __$$GalleryPageDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<APODEntry> entries});
}

/// @nodoc
class __$$GalleryPageDataStateImplCopyWithImpl<$Res>
    extends _$GalleryPageStateCopyWithImpl<$Res, _$GalleryPageDataStateImpl>
    implements _$$GalleryPageDataStateImplCopyWith<$Res> {
  __$$GalleryPageDataStateImplCopyWithImpl(_$GalleryPageDataStateImpl _value,
      $Res Function(_$GalleryPageDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
  }) {
    return _then(_$GalleryPageDataStateImpl(
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<APODEntry>,
    ));
  }
}

/// @nodoc

class _$GalleryPageDataStateImpl implements GalleryPageDataState {
  const _$GalleryPageDataStateImpl({required final List<APODEntry> entries})
      : _entries = entries;

  final List<APODEntry> _entries;
  @override
  List<APODEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'GalleryPageState.data(entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryPageDataStateImpl &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryPageDataStateImplCopyWith<_$GalleryPageDataStateImpl>
      get copyWith =>
          __$$GalleryPageDataStateImplCopyWithImpl<_$GalleryPageDataStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<APODEntry> entries) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<APODEntry> entries)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return data?.call(entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<APODEntry> entries)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryPageDataState value) data,
    required TResult Function(GalleryPageLoadingState value) loading,
    required TResult Function(GalleryPageErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryPageDataState value)? data,
    TResult? Function(GalleryPageLoadingState value)? loading,
    TResult? Function(GalleryPageErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryPageDataState value)? data,
    TResult Function(GalleryPageLoadingState value)? loading,
    TResult Function(GalleryPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class GalleryPageDataState implements GalleryPageState {
  const factory GalleryPageDataState({required final List<APODEntry> entries}) =
      _$GalleryPageDataStateImpl;

  List<APODEntry> get entries;
  @JsonKey(ignore: true)
  _$$GalleryPageDataStateImplCopyWith<_$GalleryPageDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryPageLoadingStateImplCopyWith<$Res> {
  factory _$$GalleryPageLoadingStateImplCopyWith(
          _$GalleryPageLoadingStateImpl value,
          $Res Function(_$GalleryPageLoadingStateImpl) then) =
      __$$GalleryPageLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryPageLoadingStateImplCopyWithImpl<$Res>
    extends _$GalleryPageStateCopyWithImpl<$Res, _$GalleryPageLoadingStateImpl>
    implements _$$GalleryPageLoadingStateImplCopyWith<$Res> {
  __$$GalleryPageLoadingStateImplCopyWithImpl(
      _$GalleryPageLoadingStateImpl _value,
      $Res Function(_$GalleryPageLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryPageLoadingStateImpl implements GalleryPageLoadingState {
  const _$GalleryPageLoadingStateImpl();

  @override
  String toString() {
    return 'GalleryPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryPageLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<APODEntry> entries) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<APODEntry> entries)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<APODEntry> entries)? data,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(GalleryPageDataState value) data,
    required TResult Function(GalleryPageLoadingState value) loading,
    required TResult Function(GalleryPageErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryPageDataState value)? data,
    TResult? Function(GalleryPageLoadingState value)? loading,
    TResult? Function(GalleryPageErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryPageDataState value)? data,
    TResult Function(GalleryPageLoadingState value)? loading,
    TResult Function(GalleryPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GalleryPageLoadingState implements GalleryPageState {
  const factory GalleryPageLoadingState() = _$GalleryPageLoadingStateImpl;
}

/// @nodoc
abstract class _$$GalleryPageErrorStateImplCopyWith<$Res> {
  factory _$$GalleryPageErrorStateImplCopyWith(
          _$GalleryPageErrorStateImpl value,
          $Res Function(_$GalleryPageErrorStateImpl) then) =
      __$$GalleryPageErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryPageErrorStateImplCopyWithImpl<$Res>
    extends _$GalleryPageStateCopyWithImpl<$Res, _$GalleryPageErrorStateImpl>
    implements _$$GalleryPageErrorStateImplCopyWith<$Res> {
  __$$GalleryPageErrorStateImplCopyWithImpl(_$GalleryPageErrorStateImpl _value,
      $Res Function(_$GalleryPageErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryPageErrorStateImpl implements GalleryPageErrorState {
  const _$GalleryPageErrorStateImpl();

  @override
  String toString() {
    return 'GalleryPageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryPageErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<APODEntry> entries) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<APODEntry> entries)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<APODEntry> entries)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryPageDataState value) data,
    required TResult Function(GalleryPageLoadingState value) loading,
    required TResult Function(GalleryPageErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryPageDataState value)? data,
    TResult? Function(GalleryPageLoadingState value)? loading,
    TResult? Function(GalleryPageErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryPageDataState value)? data,
    TResult Function(GalleryPageLoadingState value)? loading,
    TResult Function(GalleryPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GalleryPageErrorState implements GalleryPageState {
  const factory GalleryPageErrorState() = _$GalleryPageErrorStateImpl;
}
