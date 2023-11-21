import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_request.freezed.dart';

@freezed
class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    required String refreshToken,
    @Default('refresh_token') String grantType,
    @Default('58') String clientId,
    @Default('en_US') String locale,
    @Default(
        'QXBwUHJvZE5DWENSYXN0ZGZzamdmZ2Zhc2pnZmdmc2tkdWZnZHN1a2Zoc3VkZ2ZoZg==')
    String clientSecret,
  }) = _RefreshTokenRequest;
}
