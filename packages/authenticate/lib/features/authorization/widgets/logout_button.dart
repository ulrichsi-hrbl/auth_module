import 'package:authenticate/features/authorization/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        await ref.read(authorizationControllerProvider.notifier).logout();
      },
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(
        255,
        120,
        190,
        32,
      ))),
      child: const Text(
        "Logout",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
