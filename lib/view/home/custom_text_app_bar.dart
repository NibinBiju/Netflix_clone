import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 87,
      height: 31,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 0.72,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
