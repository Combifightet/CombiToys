
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

  @override
  void initState() {
    super.initState();

    _selectedLocale = Provider.of<LocaleModel>(context, listen: false).locale;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfbfa),
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.homePage
        ),
        backgroundColor: Color(0xff2c2b2a),
        foregroundColor: Color(0xfffcfbfa),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff2c2b2a),
                  ),                  
                ),
                DropdownButton(
                  value: _selectedLocale,
                  items: AppLocalizations.supportedLocales.map(
                    (locale) => DropdownMenuItem(
                      value: locale,
                      child: Text(locale.toString())
                    )
                  ).toList(),
                  onChanged: (Locale? locale) {
                    if (locale!=null) {
                      _selectedLocale = locale;
                      Provider.of<LocaleModel>(context, listen: false).set(locale);
                    }
                  }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}