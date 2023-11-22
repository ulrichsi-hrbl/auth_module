// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorizationImpl _$$AuthorizationImplFromJson(Map<String, dynamic> json) =>
    _$AuthorizationImpl(
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num?)?.toDouble(),
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$AuthorizationImplToJson(_$AuthorizationImpl instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
