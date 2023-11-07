import 'package:flutter/material.dart';

class LoginPanel extends StatefulWidget {
  const LoginPanel({super.key});

  @override
  State<LoginPanel> createState() => _LoginPanelState();
}

class _LoginPanelState extends State<LoginPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20,),
        Text('Login To Your Account', style: Theme.of(context).textTheme.headlineLarge),
        Text('TODO: user name'),
        Text('TODO: password'),
        Text('TODO: login button'),
        SizedBox(height: 20,),
      ],
    );
  }
}
