
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:combi_toys/l10n/generated/app_localizations.dart';
import 'package:combi_toys/app/home_page.dart';

class CombiToys extends StatelessWidget {
  const CombiToys({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => MaterialApp(
          title: 'CombiToys',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: localeModel.locale,
          home: HomePage(),
        )
      ),
    );
  }
}

class LocaleModel extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void set(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}