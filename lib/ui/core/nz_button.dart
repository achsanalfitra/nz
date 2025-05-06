import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NzButton extends StatefulWidget {
  final bool hasBorder;
  final Color background;
  final Color borderColour;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String buttonText;
  final double padding;
  final double borderWidth;
  final double borderRadius;

  const NzButton({
    this.hasBorder = true,
    required this.background,
    required this.borderColour,
    required this.fontColor,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w500,
    this.buttonText = 'Button',
    required this.padding,
    this.borderWidth = 1,
    required this.borderRadius,
    super.key,
  });

  @override
  State<NzButton> createState() => _NzButtonState();
}

class _NzButtonState extends State<NzButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.padding),
      decoration: BoxDecoration(
        color: widget.background,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColour,
          width: widget.hasBorder ? widget.borderWidth : 0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Text(
            widget.buttonText,
            style: GoogleFonts.montserrat(
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight,
              letterSpacing: -0.03,
              color: widget.fontColor,
            ),
          ),
        ],
      ),
    );
  }
}
