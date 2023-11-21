import 'package:authenticate/features/authorization/data/user_state.dart';
import 'package:authenticate/features/authorization/service/authorization_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthorizationController extends StateNotifier<UserState> {
  final AuthorizationService _authorizationService;

  AuthorizationController(UserState state, this._authorizationService) : super(state);

  Future<void>? login(String username, String password) async {
    state = state.copyWith(userName: username);
    state = state.copyWith(password: password);
    state = state.copyWith(authorization: const AsyncValue.loading());
    final result = await _authorizationService.login(username, password);
    state = state.copyWith(authorization: result.authorization);
  }

  Future<void> logout() async{
    final result = await _authorizationService.logout();
    state = state.copyWith(userName: '');
    state = state.copyWith(password: '');
    state = state.copyWith(authorization: null);
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
