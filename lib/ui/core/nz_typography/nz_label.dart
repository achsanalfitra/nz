import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NzLabel extends StatelessWidget {
  final String labelText;
  final double fontSize;
  final Color fontColor;

  const NzLabel({
    required this.labelText,
    this.fontSize = 24,
    required this.fontColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: GoogleFonts.montserrat(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w700, // bold
        letterSpacing: -0.03,
      ),
    );
  }
}
