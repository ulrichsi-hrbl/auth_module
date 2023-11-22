import 'dart:io';

import 'package:authenticate/const/date_formatter.dart';
import 'package:authenticate/features/authorization/controller/authentication_controller.dart';
import 'package:authenticate/features/authorization/data/authorization.dart';
import 'package:authenticate/features/authorization/widgets/logout_button.dart';
import 'package:authenticate/features/authorization/widgets/renew_token_button.dart';
import 'package:authenticate/features/authorization/widgets/token_remaining_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../repositories/auth_repository.dart';

class LoginPanel extends ConsumerStatefulWidget {
  const LoginPanel({super.key});

  @override
  ConsumerState<LoginPanel> createState() => _LoginPanelState();
}

class _LoginPanelState extends ConsumerState<LoginPanel> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isHidden = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text('Login To Your Account',
            style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 350,
          height: 80,
          child: TextField(
            controller: email,
            decoration: const InputDecoration(
              labelText: "Email",
              // icon: Icon(Icons.people), //icon at head of input
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 100,
          child: TextField(
            controller: password,
            obscureText: _isHidden,
            decoration: InputDecoration(
              // icon: const Icon(Icons.lock),
              //icon at head of input
              //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
              labelText: "Password",
              suffixIcon: IconButton(
                onPressed: _togglePasswordView,
                icon: Icon(
                  _isHidden ? Icons.visibility : Icons.visibility_off,
                ),
              ), //icon at tail of input
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 40,
          child: ElevatedButton(
            onPressed: () async {
              //TODO: remove for better solution. Hacky.
              FocusScope.of(context).requestFocus(new FocusNode());
              await ref
                  .read(authorizationControllerProvider.notifier)
                  .login(email.text, password.text);
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(
              255,
              120,
              190,
              32,
            ))),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Divider(),
        Consumer(builder: (context, ref, _) {
          final authorization =
              ref.watch(authorizationControllerProvider).authorization;
          if (authorization?.value != null) {
            return const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TokenRemainingTime(),
                SizedBox(
                  height: 40.0,
                ),
                LogoutButton(),
                Divider(),
                SizedBox(
                  height: 20.0,
                ),
                RenewTokenButton(),
              ],
            );
          } else {
            return const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Text('Not logged in'),
              ],
            );
          }
          return Container();
        }),
      ],
    );
  }
}
