import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({super.key, required this.htext, required this.fontsize});

  final String htext;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      htext,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontsize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
