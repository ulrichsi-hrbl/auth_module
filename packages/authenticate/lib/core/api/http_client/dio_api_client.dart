import 'package:authenticate/core/api/endpoints.dart';
import 'package:authenticate/core/api/headers.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioApiProvider = Provider.family<Dio, String>((ref, accessToken) {
  final authHeaders = {...apiHeaders, 'x-hluser-token': accessToken};
  return Dio(
    BaseOptions(baseUrl: Endpoints.authBaseURL, headers: authHeaders),
  );
});
