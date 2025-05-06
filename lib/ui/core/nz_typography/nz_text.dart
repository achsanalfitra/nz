import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NzText extends StatelessWidget {
  final String paragraphText;
  final double fontSize;
  final Color fontColor;

  const NzText({
    required this.paragraphText,
    this.fontSize = 12,
    required this.fontColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraphText,
      style: GoogleFonts.montserrat(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w400, // regular
        letterSpacing: 0,
      ),
    );
  }
}
