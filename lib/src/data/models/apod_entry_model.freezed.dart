// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

APODEntryModel _$APODEntryModelFromJson(Map<String, dynamic> json) {
  return _APODEntryModel.fromJson(json);
}

/// @nodoc
mixin _$APODEntryModel {
  @HiveField(0)
  String? get copyright => throw _privateConstructorUsedError;
  @HiveField(1)
  String get date => throw _privateConstructorUsedError;
  @HiveField(2)
  String get explanation => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'media_type')
  String get mediaType => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'service_version')
  String get serviceVersion => throw _privateConstructorUsedError;
  @HiveField(5)
  String get title => throw _privateConstructorUsedError;
  @HiveField(6)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APODEntryModelCopyWith<APODEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APODEntryModelCopyWith<$Res> {
  factory $APODEntryModelCopyWith(
          APODEntryModel value, $Res Function(APODEntryModel) then) =
      _$APODEntryModelCopyWithImpl<$Res, APODEntryModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? copyright,
      @HiveField(1) String date,
      @HiveField(2) String explanation,
      @HiveField(3) @JsonKey(name: 'media_type') String mediaType,
      @HiveField(4) @JsonKey(name: 'service_version') String serviceVersion,
      @HiveField(5) String title,
      @HiveField(6) String url});
}

/// @nodoc
class _$APODEntryModelCopyWithImpl<$Res, $Val extends APODEntryModel>
    implements $APODEntryModelCopyWith<$Res> {
  _$APODEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyright = freezed,
    Object? date = null,
    Object? explanation = null,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APODEntryModelImplCopyWith<$Res>
    implements $APODEntryModelCopyWith<$Res> {
  factory _$$APODEntryModelImplCopyWith(_$APODEntryModelImpl value,
          $Res Function(_$APODEntryModelImpl) then) =
      __$$APODEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? copyright,
      @HiveField(1) String date,
      @HiveField(2) String explanation,
      @HiveField(3) @JsonKey(name: 'media_type') String mediaType,
      @HiveField(4) @JsonKey(name: 'service_version') String serviceVersion,
      @HiveField(5) String title,
      @HiveField(6) String url});
}

/// @nodoc
class __$$APODEntryModelImplCopyWithImpl<$Res>
    extends _$APODEntryModelCopyWithImpl<$Res, _$APODEntryModelImpl>
    implements _$$APODEntryModelImplCopyWith<$Res> {
  __$$APODEntryModelImplCopyWithImpl(
      _$APODEntryModelImpl _value, $Res Function(_$APODEntryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyright = freezed,
    Object? date = null,
    Object? explanation = null,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$APODEntryModelImpl(
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APODEntryModelImpl implements _APODEntryModel {
  const _$APODEntryModelImpl(
      {@HiveField(0) this.copyright,
      @HiveField(1) required this.date,
      @HiveField(2) required this.explanation,
      @HiveField(3) @JsonKey(name: 'media_type') required this.mediaType,
      @HiveField(4)
      @JsonKey(name: 'service_version')
      required this.serviceVersion,
      @HiveField(5) required this.title,
      @HiveField(6) required this.url});

  factory _$APODEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$APODEntryModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? copyright;
  @override
  @HiveField(1)
  final String date;
  @override
  @HiveField(2)
  final String explanation;
  @override
  @HiveField(3)
  @JsonKey(name: 'media_type')
  final String mediaType;
  @override
  @HiveField(4)
  @JsonKey(name: 'service_version')
  final String serviceVersion;
  @override
  @HiveField(5)
  final String title;
  @override
  @HiveField(6)
  final String url;

  @override
  String toString() {
    return 'APODEntryModel(copyright: $copyright, date: $date, explanation: $explanation, mediaType: $mediaType, serviceVersion: $serviceVersion, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APODEntryModelImpl &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.serviceVersion, serviceVersion) ||
                other.serviceVersion == serviceVersion) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, copyright, date, explanation,
      mediaType, serviceVersion, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APODEntryModelImplCopyWith<_$APODEntryModelImpl> get copyWith =>
      __$$APODEntryModelImplCopyWithImpl<_$APODEntryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$APODEntryModelImplToJson(
      this,
    );
  }
}

abstract class _APODEntryModel implements APODEntryModel {
  const factory _APODEntryModel(
      {@HiveField(0) final String? copyright,
      @HiveField(1) required final String date,
      @HiveField(2) required final String explanation,
      @HiveField(3)
      @JsonKey(name: 'media_type')
      required final String mediaType,
      @HiveField(4)
      @JsonKey(name: 'service_version')
      required final String serviceVersion,
      @HiveField(5) required final String title,
      @HiveField(6) required final String url}) = _$APODEntryModelImpl;

  factory _APODEntryModel.fromJson(Map<String, dynamic> json) =
      _$APODEntryModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get copyright;
  @override
  @HiveField(1)
  String get date;
  @override
  @HiveField(2)
  String get explanation;
  @override
  @HiveField(3)
  @JsonKey(name: 'media_type')
  String get mediaType;
  @override
  @HiveField(4)
  @JsonKey(name: 'service_version')
  String get serviceVersion;
  @override
  @HiveField(5)
  String get title;
  @override
  @HiveField(6)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$APODEntryModelImplCopyWith<_$APODEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
