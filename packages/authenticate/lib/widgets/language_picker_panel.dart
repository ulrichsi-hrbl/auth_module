import 'package:flutter/material.dart';

class LanguagePickerPanel extends StatelessWidget {
  const LanguagePickerPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
        ),
        Text('TODO: language picker'),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
