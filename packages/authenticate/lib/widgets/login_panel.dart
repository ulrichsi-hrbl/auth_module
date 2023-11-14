import 'dart:io';

import 'package:authenticate/core/api/login_request.dart';
import 'package:authenticate/features/user/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    print(Platform.operatingSystem);
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
            onPressed: () {
              final req = LoginRequest.getRequestObject(email.text, password.text);
              debugPrint('LoginRequest $req');
              ref.read(userRepositoryProvider).login(req);
              // .then(
              //   (res) => {
              //     res.fold(
              //       (l) => {
              //         showSnackbar(context, l),
              //       },
              //       (r) => {
              //         Navigator.pushReplacementNamed(context, 'Home'),
              //       },
              //     ),
              //   },
              // );
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(
              255,
              120,
              190,
              32,
            ))),
            child: const Text("Login"),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
