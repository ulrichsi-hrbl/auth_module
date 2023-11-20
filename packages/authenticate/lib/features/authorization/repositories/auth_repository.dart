import 'dart:convert';

import 'package:authenticate/core/api/endpoints.dart';
import 'package:authenticate/core/api/headers.dart';
import 'package:authenticate/core/api/http_client/dio_auth_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

abstract class AuthRepository {
  Future login(Map<String, Object> credentials);
}

class DioAuthRepository implements AuthRepository {
  final Dio dioClient;

  DioAuthRepository({required this.dioClient});
  
  @override
  Future login(Map<String, Object> credentials) async {
    final Response response =
        await dioClient.post(Endpoints.loginURL, data: credentials);
    debugPrint('response $response');
    return response.data;
  }
}

final userRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return DioAuthRepository(dioClient: dio);
});
