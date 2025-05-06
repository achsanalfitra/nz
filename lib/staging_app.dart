import 'package:flutter/material.dart';
import 'package:nz/ui/core/nz_button_model.dart';
import 'package:nz/ui/theme/nz_theme_provider.dart';
import 'package:nz/ui/theme/nz_theme.dart';

class StagingApp extends StatelessWidget {
  const StagingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NzThemeProvider(
      initialTheme: 'lightMode',
      child: MaterialApp(
        home: Builder(
          builder: (context) {
            final theme = context.theme();
            return Scaffold(
              body: Center(child: NzButtonModel.generate(context, 'secondary')),
            );
          },
        ),
      ),
    ); //insert your app here
  }
}
