import 'package:authenticate/features/authorization/data/user_state.dart';
import 'package:authenticate/features/authorization/service/authorization_service.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthorizationController extends StateNotifier<UserState> {
  final AuthorizationService _authorizationService;

  AuthorizationController(UserState state, this._authorizationService)
      : super(state);

  Future<void>? login(String username, String password) async {
    state = state.copyWith(userName: username);
    state = state.copyWith(password: password);
    state = state.copyWith(authorization: const AsyncValue.loading());
    final result = await _authorizationService.login(username, password);
    state = state.copyWith(authorization: result.authorization);
  }

  Future<void> logout() async {
    final result = await _authorizationService.logout();
    state = state.copyWith(userName: '');
    state = state.copyWith(password: '');
    state = state.copyWith(authorization: null);
  }

  Future<void> renewToken() async {
    // debugPrint('renew token ${state.authorization!.value!.refreshToken}');
    if (state.authorization?.value?.accessToken != null) {
      final UserState result = await _authorizationService.renewToken(
          state.authorization!.value!.refreshToken, state.userName!);
      // debugPrint('**** renew token ${result.toString()}');

      //TODO: complete the refresh
      state = state.copyWith(authorization: result.authorization);
    }
  }

  Stream<Duration> watchExpirationTime() {
    Duration? remainingTime;
    Map<String, dynamic>? accessToken;

    if (state.authorization?.value?.accessToken != null) {
      accessToken = JwtDecoder.decode(state.authorization!.value!.accessToken);
    }
    if (accessToken != null) {
      remainingTime =
          JwtDecoder.getRemainingTime(state.authorization!.value!.accessToken);
    }
    return Stream.value(remainingTime ?? const Duration(seconds: 0));
  }
}

final authorizationControllerProvider =
    StateNotifierProvider.autoDispose<AuthorizationController, UserState>(
        (ref) {
  final AuthorizationService authorizationService =
      ref.watch(authorizationServiceProvider);
  return AuthorizationController(
    UserState(),
    authorizationService,
  );
});
