
import 'package:combi_toys/theme/dark_theme.dart';
import 'package:combi_toys/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:combi_toys/l10n/generated/app_localizations.dart';
import 'package:combi_toys/app/home_page.dart';

class CombiToys extends StatelessWidget {
  const CombiToys({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalSettingsModel(),
      child: Consumer<GlobalSettingsModel>(
        builder: (context, globalSettingsModel, child) => MaterialApp(
          title: 'CombiToys',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: globalSettingsModel.locale,
          localeListResolutionCallback: (List<Locale>? preferredLocales, Iterable<Locale> supportedLocales) {
            if (preferredLocales == null || preferredLocales.isEmpty) {
              return supportedLocales.first;
            }
            for (final Locale locale in preferredLocales) {
              if (supportedLocales.contains(locale)) {
                return locale;
              }
              // Try to match just the language code if full match not found
              final match = supportedLocales.firstWhere(
                (supported) => supported.languageCode == locale.languageCode,
                orElse: () => supportedLocales.first,
              );
              if (match.languageCode == locale.languageCode) {
                return match;
              }
            }

            return supportedLocales.first;
          },
          themeMode: globalSettingsModel.theme,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: HomePage(),
        )
      ),
    );
  }
}

class GlobalSettingsModel extends ChangeNotifier {
  Locale? _locale;
  ThemeMode _theme = ThemeMode.system;

  Locale? get locale => _locale;
  void setLocale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }

  ThemeMode get theme => _theme;
  void setTheme(ThemeMode theme) {
    _theme = theme;
    notifyListeners();
  }
}
