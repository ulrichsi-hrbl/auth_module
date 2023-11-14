import 'dart:convert';

import 'package:authenticate/core/api/endpoints.dart';
import 'package:authenticate/core/api/headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

abstract class AuthRepository {
  Future login(Map<String, Object> credentials);
}

class DioAuthRepository implements AuthRepository {
  late Dio _dio;

  DioAuthRepository() {
    _dio = Dio(
      BaseOptions(baseUrl: Endpoints.baseURL, headers: AuthHeaders),
    );
  }

  @override
  Future login(Map<String, Object> credentials) async {
    final Response response =
        await _dio.post(Endpoints.loginURL, data: jsonEncode(credentials));
    debugPrint('response $response');
    return response.data;
  }
}

final userRepositoryProvider = Provider<AuthRepository>((ref) {
  return DioAuthRepository();
});
