import 'package:flutter/material.dart';

class UnderlinedTappableText extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const UnderlinedTappableText(
      {required this.text, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 1,
          color: Color.fromARGB(
            255,
            120,
            190,
            32,
          ),
        ))),
        child: Text(
          text!,
          style: const TextStyle(
              color: Color.fromARGB(
                255,
                120,
                190,
                32,
              ),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
