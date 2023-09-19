import 'package:flutter/material.dart';

class SubText extends StatelessWidget {
  const SubText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.68));
  }
}
