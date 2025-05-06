import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nz/ui/theme/nz_theme.dart';

class NzTag extends StatefulWidget {
  final bool hasText;
  final double fontSize;
  final FontWeight fontWeight;
  final String tagText;
  final double padding;
  final double borderWidth;
  final double borderRadius;
  final List<Widget>? leftChildren;
  final List<Widget>? rightChildren;
  final void Function()? onTap;

  const NzTag({
    this.hasText = true,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w500,
    this.tagText = 'Tag',
    this.padding = 10,
    this.borderWidth = 1,
    this.borderRadius = 10,
    this.leftChildren,
    this.rightChildren,
    this.onTap,
    super.key,
  });

  @override
  State<NzTag> createState() => _NzTagState();
}

class _NzTagState extends State<NzTag> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap?? (){} ,
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        decoration: BoxDecoration(
          color: context.theme().ink.colour900,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            if(widget.leftChildren != null) ...widget.leftChildren!,
            widget.hasText? Text( 
              widget.tagText,
              style: GoogleFonts.montserrat(
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
                letterSpacing: -0.03,
                color: context.theme().accent.colour300,
              ),
            ) : SizedBox.shrink(),
            if(widget.rightChildren != null) ...widget.rightChildren!,
          ],
        ),
      ),
    );
  }
}
