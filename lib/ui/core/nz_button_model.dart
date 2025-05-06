import 'package:flutter/material.dart';
import 'package:nz/ui/core/nz_button.dart';
import 'package:nz/ui/theme/nz_theme.dart';

class NzButtonModel {
  static NzButton generate(
    BuildContext context,
    String buttonName, {
    bool hasText = true,
    bool isActive = true,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.w500,
    String buttonText = 'Button',
    double padding = 10,
    double borderWidth = 1,
    double borderRadius = 10,
    List<Widget>? leftChildren,
    List<Widget>? rightChildren,
    void Function()? onTap,
  }) {
    final theme = context.theme();
    if (buttonName == 'main') {
      return NzButton(
        background: theme.positive.colour700!,
        borderColour: theme.positive.colour700!,
        fontColor: theme.background.colour100!,
        inactiveBackground: theme.positive.colour500!,
        inactiveBorderColour: theme.positive.colour500!,
        inactiveFontColor: theme.background.colour100!,
        hasBorder: false,
        hasText: hasText,
        isActive: isActive,
        fontSize: fontSize,
        fontWeight: fontWeight,
        buttonText: buttonText,
        padding: padding,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        leftChildren: leftChildren,
        rightChildren: leftChildren,
        onTap: onTap,
      );
    } else if (buttonName == 'secondary') {
      return NzButton(
        background: theme.accent.colour700!,
        borderColour: theme.accent.colour700!,
        fontColor: theme.background.colour100!,
        inactiveBackground: theme.accent.colour500!,
        inactiveBorderColour: theme.accent.colour500!,
        inactiveFontColor: theme.background.colour100!,
        hasBorder: false,
        hasText: hasText,
        isActive: isActive,
        fontSize: fontSize,
        fontWeight: fontWeight,
        buttonText: buttonText,
        padding: padding,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        leftChildren: leftChildren,
        rightChildren: leftChildren,
        onTap: onTap,
      );
    } else if (buttonName == 'tertiary') {
       return NzButton(
        background: const Color.fromARGB(0, 255, 255, 255),
        borderColour: theme.accent.colour700!,
        fontColor: theme.accent.colour700!,
        inactiveBackground: theme.ink.colour300!,
        inactiveBorderColour: theme.accent.colour500!,
        inactiveFontColor: theme.accent.colour700!,
        hasBorder: true,
        hasText: hasText,
        isActive: isActive,
        fontSize: fontSize,
        fontWeight: fontWeight,
        buttonText: buttonText,
        padding: padding,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        leftChildren: leftChildren,
        rightChildren: leftChildren,
        onTap: onTap,
      );
    } else {
      return NzButton(
        background: theme.positive.colour700!,
        borderColour: theme.positive.colour700!,
        fontColor: theme.background.colour100!,
        inactiveBackground: theme.positive.colour500!,
        inactiveBorderColour: theme.positive.colour500!,
        inactiveFontColor: theme.background.colour100!,
        hasBorder: false,
        hasText: hasText,
        isActive: isActive,
        fontSize: fontSize,
        fontWeight: fontWeight,
        buttonText: "Oops, you're selecting the wrong button",
        padding: padding,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        leftChildren: leftChildren,
        rightChildren: leftChildren,
        onTap: onTap,
      );
    }
  }
}
