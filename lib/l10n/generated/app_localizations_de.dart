// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get homePage => 'Startseite';

  @override
  String get language => 'Sprache:';

  @override
  String get appearance => 'Erscheinungsbild:';

  @override
  String color(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'red': 'Rot',
        'orange': 'Orange',
        'yellow': 'Gelb',
        'green': 'Grün',
        'blue': 'Blau',
        'purple': 'Lila',
        'other': '$name',
      },
    );
    return '$_temp0';
  }

  @override
  String get themeAutomatic => 'Automatisch';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeLight => 'Hell';

  @override
  String get widgetsPage => 'Material Widgets Seite';
}
