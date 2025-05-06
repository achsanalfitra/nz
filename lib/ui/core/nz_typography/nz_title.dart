import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NzLabel extends StatelessWidget {
  final String titleText;
  final double fontSize;
  final Color fontColor;

  const NzLabel({
    required this.titleText,
    this.fontSize = 48,
    required this.fontColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: GoogleFonts.newsreader(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w700, // bold
        letterSpacing: -0.03,
      ),
    );
  }
}