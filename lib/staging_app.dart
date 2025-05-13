import 'package:flutter/material.dart';
// import 'package:nz/ui/core/nz_button/nz_button_model.dart';
import 'package:nz/ui/core/nz_dialog/nz_popup.dart';
import 'package:nz/ui/core/nz_layout/nz_layout.dart';
// import 'package:nz/ui/core/nz_typography/nz_label.dart';
// import 'package:nz/ui/core/nz_typography/nz_text.dart';
// import 'package:nz/ui/core/nz_typography/nz_title.dart';
import 'package:nz/ui/theme/nz_theme_provider.dart';
// import 'package:nz/ui/theme/nz_theme.dart';

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
            // final theme = context.theme();
            return Scaffold(
              body: NzLayout(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 14,
                  children: [NzPopup()],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
