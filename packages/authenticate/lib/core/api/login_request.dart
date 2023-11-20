import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String username,
    required String password,
    @Default('password') String grantType,
    @Default('58') String clientId,
    @Default('en_US') String locale,
    @Default(
        'QXBwUHJvZE5DWENSYXN0ZGZzamdmZ2Zhc2pnZmdmc2tkdWZnZHN1a2Zoc3VkZ2ZoZg==')
    String clientSecret,
  }) = _LoginRequest;
}
