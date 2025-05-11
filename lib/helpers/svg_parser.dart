import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgParser {
  static Widget parseSvg(String assetName, String semanticsLabel) {
    final Widget svg = SvgPicture.asset(assetName, semanticsLabel: semanticsLabel);
    return svg;
  }
}
