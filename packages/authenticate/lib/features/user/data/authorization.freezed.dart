// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) {
  return _Authorization.fromJson(json);
}

/// @nodoc
mixin _$Authorization {
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  double? get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationCopyWith<Authorization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationCopyWith<$Res> {
  factory $AuthorizationCopyWith(
          Authorization value, $Res Function(Authorization) then) =
      _$AuthorizationCopyWithImpl<$Res, Authorization>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') double? expiresIn,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class _$AuthorizationCopyWithImpl<$Res, $Val extends Authorization>
    implements $AuthorizationCopyWith<$Res> {
  _$AuthorizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as double?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorizationImplCopyWith<$Res>
    implements $AuthorizationCopyWith<$Res> {
  factory _$$AuthorizationImplCopyWith(
          _$AuthorizationImpl value, $Res Function(_$AuthorizationImpl) then) =
      __$$AuthorizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') double? expiresIn,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class __$$AuthorizationImplCopyWithImpl<$Res>
    extends _$AuthorizationCopyWithImpl<$Res, _$AuthorizationImpl>
    implements _$$AuthorizationImplCopyWith<$Res> {
  __$$AuthorizationImplCopyWithImpl(
      _$AuthorizationImpl _value, $Res Function(_$AuthorizationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$AuthorizationImpl(
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as double?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorizationImpl implements _Authorization {
  const _$AuthorizationImpl(
      {@JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'expires_in') this.expiresIn,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken});

  factory _$AuthorizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorizationImplFromJson(json);

  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final double? expiresIn;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'Authorization(tokenType: $tokenType, expiresIn: $expiresIn, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationImpl &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenType, expiresIn, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationImplCopyWith<_$AuthorizationImpl> get copyWith =>
      __$$AuthorizationImplCopyWithImpl<_$AuthorizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorizationImplToJson(
      this,
    );
  }
}

abstract class _Authorization implements Authorization {
  const factory _Authorization(
          {@JsonKey(name: 'token_type') final String? tokenType,
          @JsonKey(name: 'expires_in') final double? expiresIn,
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'refresh_token') final String? refreshToken}) =
      _$AuthorizationImpl;

  factory _Authorization.fromJson(Map<String, dynamic> json) =
      _$AuthorizationImpl.fromJson;

  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  double? get expiresIn;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizationImplCopyWith<_$AuthorizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
