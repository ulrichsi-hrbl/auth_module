import 'package:authenticate/features/authorization/data/user_state.dart';
import 'package:authenticate/features/authorization/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthorizationService {
  Future<UserState> login(String username, String password);
  Future<UserState> renewToken(String refreshToken, String userName);
  Future<UserState> logout();
}

class DioAuthorizationService implements AuthorizationService {
  final AuthRepository _authRepository;

  DioAuthorizationService(this._authRepository);

  @override
  Future<UserState> login(String username, String password) async {
    return _authRepository.login(username, password);
  }

  @override
  Future<UserState> logout() async {
    return _authRepository.logout();
  }

  @override
  Future<UserState> renewToken(String refreshToken, String userName) async {
    return _authRepository.renewToken(refreshToken, userName);
  }
}

final authorizationServiceProvider = Provider<AuthorizationService>((ref) {
  final AuthRepository dioAuthRepository = ref.watch(userRepositoryProvider);
  return DioAuthorizationService(dioAuthRepository);
});
