import 'package:flutter/material.dart';
import 'package:nz/ui/language/nz_language.dart';
import 'package:nz/ui/language/nz_language_controller.dart';

class NzLanguageProvider extends StatefulWidget {
  final Widget child;

  const NzLanguageProvider({super.key, required this.child});

  @override
  State<NzLanguageProvider> createState() => _NzLanguageProviderState();
}

class _NzLanguageProviderState extends State<NzLanguageProvider> {
  late final NzLanguageController _nzLanguageController;

  @override
  void initState() {
    super.initState();
    _nzLanguageController = NzLanguageController();
  }

  @override
  Widget build(BuildContext context) {
    return NzLanguage(
      nzLanguageController: _nzLanguageController,
      child: widget.child,
    );
  }
}
