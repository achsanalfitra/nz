import 'package:flutter/material.dart';
import 'package:nz/ui/theme/nz_theme.dart';
import 'package:nz/ui/theme/nz_theme_controller.dart';

class NzThemeProvider extends StatefulWidget {
  const NzThemeProvider({
    super.key,
    required this.initialTheme,
    required this.child,
  });
  final Widget child;
  final String initialTheme;

  @override
  State<NzThemeProvider> createState() => _NzThemeProviderState();
}

class _NzThemeProviderState extends State<NzThemeProvider> {
  late final NzThemeController _themeController;

  @override
  void initState() {
    super.initState();

    _themeController = NzThemeController(themeName: widget.initialTheme);
  }

  @override
  Widget build(BuildContext context) {
    return NzTheme(nzThemeController: _themeController, child: widget.child);
  }
}
