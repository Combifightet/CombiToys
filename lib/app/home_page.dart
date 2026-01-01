import 'package:combi_toys/app/app_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:combi_toys/app/widgets_page.dart';
import 'package:combi_toys/global.dart';
import 'package:combi_toys/l10n/generated/app_localizations.dart';
import 'package:combi_toys/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Locale? _selectedLocale;
  late ThemeMode _selectedTheme;
  late String _selectedAccentColor;

  @override
  void initState() {
    super.initState();

    _selectedLocale = Provider.of<GlobalSettingsModel>(context, listen: false).locale;
    _selectedTheme = Provider.of<GlobalSettingsModel>(context, listen: false).theme;
    _selectedAccentColor = Provider.of<GlobalSettingsModel>(context, listen: false).accentColor;
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
                SizedBox(
                  width: 16,
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
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppLocalizations.of(context)!.appearance,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: 16,
                ),
                SegmentedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Color?>{
                      WidgetState.selected: Theme.of(context).brightness==Brightness.light
                          ? accentColors[_selectedAccentColor]![1]
                          : accentColors[_selectedAccentColor]![2],
                    }),
                  ),
                  segments: List<ButtonSegment<String>>.generate(accentColors.length, (int index) {
                    String colorName = accentColors.keys.elementAt(index); 
                    return ButtonSegment(
                      value: colorName,
                      icon: Icon(
                        Icons.color_lens_rounded,
                        color: Theme.of(context).brightness==Brightness.light
                          ? accentColors[colorName]![1]
                          : accentColors[colorName]![2],
                      ),
                      label: Text(AppLocalizations.of(context)!.color(colorName))
                    );
                  }),
                  selected: {_selectedAccentColor},
                  onSelectionChanged: (Set<String> selection) {
                    if (selection.isNotEmpty) {
                      setState(() {
                        _selectedAccentColor = selection.first;
                        Provider.of<GlobalSettingsModel>(context, listen: false).setAccentColor(selection.first);
                      });
                    }
                  },
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: 16,
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
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => WidgetsPage()
                )
              ),
              child: Text(
                AppLocalizations.of(context)!.widgetsPage
              )
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => AppBarPage()
                )
              ),
              child: Text(
                AppLocalizations.of(context)!.appBarPage
              )
            )
          ],
        ),
      ),
    );
  }
}