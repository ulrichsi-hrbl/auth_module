import 'package:authenticate/widgets/underlined_tappable_text.dart';
import 'package:flutter/material.dart';

class TermsOfUsePrivacyPanel extends StatelessWidget {
  const TermsOfUsePrivacyPanel({super.key});

  void handleTermsOfUseTap(BuildContext context) {
    // debugPrint('handleTermsOfUseTap');
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(),
              const SizedBox(
                height: 80,
              ),
              const Text('TODO: load web view'),
            ],
          ),
        );
      },
    );
  }

  void handlePrivacyPolicyTap(BuildContext context) {
    // debugPrint('handlePrivacyPolicyTap');
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.orangeAccent,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(),
              const SizedBox(
                height: 80,
              ),
              const Text('TODO: load web view'),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UnderlinedTappableText(
                  text: 'Terms of Use',
                  callback: () => handleTermsOfUseTap(context)),
              UnderlinedTappableText(
                  text: 'Privacy Policy',
                  callback: () => handlePrivacyPolicyTap(context)),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
