import 'package:combi_toys/l10n/generated/app_localizations.dart';
import 'package:combi_toys/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  bool useSeed = false;
  int seed = 0;
  double strength = 10;
  double randomness = 0.333;

  late TextEditingController seedController;

  @override
  void initState() {
    super.initState();
    seedController = TextEditingController(text: '$seed');
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.widgetsPage,
        ),
        shape: AppBarShape(
          useSeed?seed:null,
          strength: strength,
          randomness: randomness
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 200,
                        child: SwitchListTile(
                          title: Text('Use Seed:'),
                          value: useSeed,
                          onChanged: (value) {
                            setState(() {
                              useSeed = value;
                            });
                          }
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          controller: seedController,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            setState(() {
                              seed = int.tryParse(value) ?? 0;
                            });
                          },
                        ),
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
                        'Strength:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Slider(
                        value: strength,
                        min: 0,
                        max: constraints.maxHeight/100.round()*100 + 100,
                        divisions: constraints.maxHeight/100.round()*100 + 100 as int,
                        label: '${strength.round()}',
                        // TODO: maybe make logarithmic
                        onChanged: (value) {
                          setState(() {
                            strength = value;
                          });
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
                        'Randomness:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Slider(
                        value: randomness,
                        min: 0,
                        max: 1,
                        divisions: 100,
                        label: '$randomness',
                        onChanged: (value) {
                          setState(() {
                            randomness = value;
                          });
                        }
                      ),
                    ],
                  )
                ],
              ),
            )
          );
        }
      ),
    );
  }
}