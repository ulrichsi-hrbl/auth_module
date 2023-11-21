import 'package:authenticate/core/api/endpoints.dart';
import 'package:authenticate/core/api/http_client/dio_auth_client.dart';
import 'package:authenticate/core/api/login_request.dart';
import 'package:authenticate/core/api/refresh_token_request.dart';
import 'package:authenticate/features/authorization/data/authorization.dart';
import 'package:authenticate/features/authorization/data/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

abstract class AuthRepository {
  Future<UserState> login(String username, String password);
  Future<UserState> renewToken(String oldAccessToken);
  Future<UserState> logout();
}

class DioAuthRepository implements AuthRepository {
  final Dio dioClient;

  DioAuthRepository({required this.dioClient});

  @override
  Future<UserState> login(String username, String password) async {
    final LoginRequest req =
        LoginRequest(username: username, password: password);
    final Response response = await dioClient.post(Endpoints.loginURL, data: {
      'grant_type': req.grantType,
      'client_id': req.clientId,
      'client_secret': req.clientSecret,
      'locale': req.locale,
      'username': req.username,
      'password': req.password,
    });
    // debugPrint('response $response');
    final authorization = Authorization.fromJson(response.data);
    return UserState(
        userName: req.username,
        password: req.password,
        authorization: AsyncValue.data(authorization));
  }

  @override
  Future<UserState> renewToken(String oldAccessToken) async{
    final RefreshTokenRequest req =
    RefreshTokenRequest(refreshToken: oldAccessToken);
    final Response response = await dioClient.post(Endpoints.loginURL, data: {
      'grant_type': req.grantType,
      'client_id': req.clientId,
      'client_secret': req.clientSecret,
      'locale': req.locale,
      'refreshToken':oldAccessToken,
    });
    return Future.value(UserState());
  }

  @override
  Future<UserState> logout() async{
    return Future.value(UserState());
  }
}

final userRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return DioAuthRepository(dioClient: dio);
});
