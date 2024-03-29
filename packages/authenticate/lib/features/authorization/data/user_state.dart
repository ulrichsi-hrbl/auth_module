import 'package:authenticate/features/authorization/data/authorization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
     String? userName,
     String? password,
     AsyncValue<Authorization>? authorization,
  }) = _UserState;

}
