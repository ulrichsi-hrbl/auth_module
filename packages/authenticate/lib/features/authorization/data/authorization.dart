import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization.freezed.dart';
part 'authorization.g.dart';

@freezed
class Authorization with _$Authorization {
  const factory Authorization({
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') double? expiresIn,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _Authorization;

  factory Authorization.fromJson(Map<String, Object?> json) =>
      _$AuthorizationFromJson(json);
}
