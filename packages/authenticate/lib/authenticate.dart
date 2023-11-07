import 'package:authenticate/widgets/create_account_panel.dart';
import 'package:authenticate/widgets/forgot_password_panel.dart';
import 'package:authenticate/widgets/language_picker_panel.dart';
import 'package:authenticate/widgets/login_panel.dart';
import 'package:authenticate/widgets/terms_privacy_panel.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.green,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
                'packages/authenticate/assets/images/loginHeader.png',
                fit: BoxFit.cover),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              LoginPanel(),
              ForgotPasswordPanel(),
              CreateAccountPanel(),
              Container(color: Colors.black26, height: 100),
              LanguagePickerPanel(),
              TermsOfUsePrivacyPanel(),
            ],
          ),
        ),
      ],
    );
  }
}
