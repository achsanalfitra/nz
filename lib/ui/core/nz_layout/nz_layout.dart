import 'package:flutter/material.dart';
import 'package:nz/ui/theme/nz_theme.dart';

class NzLayout extends StatelessWidget {
  final Widget child;
  final double margin;

  const NzLayout({required this.child, this.margin = 24, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: context.theme().background.colour100,
      child: Padding(padding: EdgeInsets.all(margin), child: child),
    );
  }
}
