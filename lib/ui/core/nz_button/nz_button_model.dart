import 'package:flutter/material.dart';
import 'package:nz/ui/core/nz_button/nz_button.dart';
import 'package:nz/ui/theme/nz_theme.dart';

class NzButtonModel {
  // static Widget _iconParser(String iconName) {
  //   return Text('placeholder');
  // }

  static NzButton generate(
    BuildContext context,
    String buttonName, {
    bool hasText = true,
    bool isActive = true,
    double fontSize = 24,
    FontWeight? fontWeight,
    String buttonText = 'Button',
    double? padding,
    double borderWidth = 1,
    double? borderRadius,
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
        fontWeight: fontWeight?? FontWeight.w500,
        buttonText: buttonText,
        padding: padding?? 10,
        borderWidth: borderWidth,
        borderRadius: borderRadius?? 10,
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
      fontWeight: fontWeight?? FontWeight.w500,
        buttonText: buttonText,
        padding: padding?? 10,
        borderWidth: borderWidth,
        borderRadius: borderRadius?? 10,
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
      fontWeight: fontWeight?? FontWeight.w500,
        buttonText: buttonText,
        padding: padding?? 10,
        borderWidth: borderWidth,
        borderRadius: borderRadius?? 10,
        leftChildren: leftChildren,
        rightChildren: leftChildren,
        onTap: onTap,
      );
    } else if (buttonName == 'text') {
      return NzButton(
        background: const Color.fromARGB(0, 255, 255, 255),
        borderColour: const Color.fromARGB(0, 255, 255, 255),
        fontColor: theme.ink.colour900!,
        inactiveBackground: theme.ink.colour300!,
        inactiveBorderColour: const Color.fromARGB(0, 255, 255, 255),
        inactiveFontColor: theme.ink.colour700!,
        hasBorder: false,
        hasText: hasText,
        isActive: isActive,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w600,
        buttonText: buttonText,
        padding: padding ?? 4,
        borderWidth: borderWidth,
        borderRadius: borderRadius ?? 0,
        leftChildren: leftChildren,
        rightChildren: rightChildren,
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
        fontWeight: FontWeight.w500,
        buttonText: "Oops, you're selecting the wrong button",
        padding: padding?? 10,
        borderWidth: borderWidth,
        borderRadius: borderRadius?? 10,
        leftChildren: leftChildren,
        rightChildren: leftChildren,
        onTap: onTap,
      );
    }
  }
}
