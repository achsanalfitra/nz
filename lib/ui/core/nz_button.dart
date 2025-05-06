import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NzButton extends StatefulWidget {
  final bool hasBorder;
  final bool isActive;
  final bool hasText;
  final Color background;
  final Color borderColour;
  final Color fontColor;
  final Color inactiveBackground;
  final Color inactiveBorderColour;
  final Color inactiveFontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String buttonText;
  final double padding;
  final double borderWidth;
  final double borderRadius;
  final List<Widget>? leftChildren;
  final List<Widget>? rightChildren;
  final void Function()? onTap;

  const NzButton({
    this.hasBorder = true,
    this.hasText = true,
    this.isActive = true,
    required this.background,
    required this.borderColour,
    required this.fontColor,
    required this.inactiveBackground,
    required this.inactiveBorderColour,
    required this.inactiveFontColor,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w500,
    this.buttonText = 'Button',
    this.padding = 10,
    this.borderWidth = 1,
    this.borderRadius = 10,
    this.leftChildren,
    this.rightChildren,
    this.onTap,
    super.key,
  });

  @override
  State<NzButton> createState() => _NzButtonState();
}

class _NzButtonState extends State<NzButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap?? (){} ,
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        decoration: BoxDecoration(
          color: widget.isActive? widget.background : widget.inactiveBackground,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: widget.isActive? widget.borderColour : widget.inactiveBorderColour,
            width: widget.hasBorder ? widget.borderWidth : 0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            if(widget.leftChildren != null) ...widget.leftChildren!,
            widget.hasText? Text( 
              widget.buttonText,
              style: GoogleFonts.montserrat(
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
                letterSpacing: -0.03,
                color:  widget.isActive? widget.fontColor : widget.inactiveFontColor,
              ),
            ) : SizedBox.shrink(),
            if(widget.rightChildren != null) ...widget.rightChildren!,
          ],
        ),
      ),
    );
  }
}
