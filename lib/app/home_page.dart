
import 'package:combi_toys/app/combi_toys.dart';
import 'package:flutter/material.dart';

import 'package:combi_toys/l10n/generated/app_localizations.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Locale? _selectedLocale;
  late ThemeMode _selectedTheme;

  @override
  void initState() {
    super.initState();

    _selectedLocale = Provider.of<GlobalSettingsModel>(context, listen: false).locale;
    _selectedTheme = Provider.of<GlobalSettingsModel>(context, listen: false).theme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.homePage
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  
                  AppLocalizations.of(context)!.appearance,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                DropdownButton<ThemeMode>(
                  value: _selectedTheme,
                  items: [
                    DropdownMenuItem<ThemeMode>(
                      value: ThemeMode.system,
                      child: Text(AppLocalizations.of(context)!.themeAutomatic,)
                    ),
                    DropdownMenuItem<ThemeMode>(
                      value: ThemeMode.light,
                      child: Text(AppLocalizations.of(context)!.themeLight,)
                    ),
                    DropdownMenuItem<ThemeMode>(
                      value: ThemeMode.dark,
                      child: Text(AppLocalizations.of(context)!.themeDark,)
                    ),
                  ],
                  onChanged: (ThemeMode? theme) {
                    if (theme!=null) {
                      _selectedTheme = theme;
                      Provider.of<GlobalSettingsModel>(context, listen: false).setTheme(theme);
                    }
                  }
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Builder(
                  builder: (context) {
                    List<DropdownMenuItem<Locale>> items = [];
                    //   DropdownMenuItem<Locale?>(
                    //     value: null,
                    //     label: '${Localizations.localeOf(context).toString()} (automatic)'
                    //   )
                    // ];
                    items.addAll(
                      AppLocalizations.supportedLocales.map(
                        (locale) => DropdownMenuItem<Locale>(
                          value: locale,
                          child: Text(locale.toString()),
                        )
                      )
                    );

                    _selectedLocale = Localizations.localeOf(context);

                    return DropdownButton<Locale>(
                      value: _selectedLocale,
                      items: items,
                      onChanged: (Locale? locale) {
                        _selectedLocale = locale;
                        Provider.of<GlobalSettingsModel>(context, listen: false).setLocale(locale);
                      }
                    );
                  }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}