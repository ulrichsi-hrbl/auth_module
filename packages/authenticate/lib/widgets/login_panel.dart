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
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text('Login To Your Account',
            style: Theme.of(context).textTheme.headlineLarge),
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
        Text('TODO: login button'),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
