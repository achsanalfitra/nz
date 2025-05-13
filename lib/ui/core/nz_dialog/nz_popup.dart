import 'package:flutter/material.dart';
import 'package:nz/ui/core/nz_button/nz_button_model.dart';
import 'package:nz/ui/theme/nz_theme.dart';

class NzPopup extends StatelessWidget {
  final List<Widget>? children;
  final Color? background;

  const NzPopup({this.children, this.background, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme();
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: background ?? theme.positive.colour700,
      ),
      child: Column(
        spacing: 4,
        children:
            children ??
            [
              NzButtonModel.button(context, "main", buttonText: 'menu 1'),
              NzButtonModel.button(context, "main", buttonText: 'menu 2'),
              NzButtonModel.button(context, "main", buttonText: 'menu 3'),
            ],
      ),
    );
  }
}
