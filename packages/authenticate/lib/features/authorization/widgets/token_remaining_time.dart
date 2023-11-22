import 'package:authenticate/const/date_formatter.dart';
import 'package:authenticate/features/authorization/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenRemainingTime extends ConsumerWidget {
  const TokenRemainingTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authorization =
        ref.watch(authorizationControllerProvider).authorization;
    if (authorization?.value != null) {
      Duration remainingTime =
          JwtDecoder.getRemainingTime(authorization!.value!.accessToken);
      final dateFormatted = kFormatMinutesSeconds.format(
          DateTime.fromMillisecondsSinceEpoch(remainingTime.inMilliseconds));

      return Text('accessToken remaining time ${dateFormatted}');
    } else {
      return Container();
    }
  }
}
