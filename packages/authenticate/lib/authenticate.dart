import 'package:authenticate/features/authorization/widgets/login_panel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Authenticate extends ConsumerWidget {
  const Authenticate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String imagePath = kIsWeb
        ? 'images/loginHeader.png'
        : 'packages/authenticate/assets/images/loginHeader.png';

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
              const LoginPanel(),
              // ForgotPasswordPanel(),
              // CreateAccountPanel(),
              // Container(color: Colors.black26, height: 100),
              // LanguagePickerPanel(),
              // TermsOfUsePrivacyPanel(),
            ],
          ),
        ),
      ],
    );
  }
}
