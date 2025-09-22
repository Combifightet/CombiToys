import 'package:combi_toys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.widgetsPage,
        ),
        actions: [
          BackButton()
        ],
      ),
      body: Row(
        children: [
          Spacer(flex: 1,),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque bibendum est mauris, eu malesuada est ultricies eget. In hac habitasse platea dictumst. Fusce a lacinia mi, ut efficitur orci. Aliquam erat volutpat.'),
                SizedBox(height: 32,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Actions',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        SizedBox(height: 8,),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ShowcaseItem(
                              heading: 'Common Buttons',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      ElevatedButton(onPressed: (() {}), child: const Text('Elevated')),
                                      SizedBox(height: 8,),
                                      FilledButton(onPressed: (() {}), child: const Text('Filled')),
                                      SizedBox(height: 8,),
                                      FilledButton.tonal(onPressed: (() {}), child: const Text('Filled Tonal')),
                                      SizedBox(height: 8,),
                                      OutlinedButton(onPressed: (() {}), child: const Text('Outlined')),
                                      SizedBox(height: 8,),
                                      TextButton(onPressed: (() {}), child: const Text('Text')),
                                    ],
                                  ),
                                  SizedBox(width: 16,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      ElevatedButton(onPressed: null, child: const Text('Elevated')),
                                      SizedBox(height: 8,),
                                      FilledButton(onPressed: null, child: const Text('Filled')),
                                      SizedBox(height: 8,),
                                      FilledButton.tonal(onPressed: null, child: const Text('Filled Tonal')),
                                      SizedBox(height: 8,),
                                      OutlinedButton(onPressed: null, child: const Text('Outlined')),
                                      SizedBox(height: 8,),
                                      TextButton(onPressed: null, child: const Text('Text')),
                                    ],
                                  ),
                                ]
                              )
                            ),
                            ShowcaseItem(
                              heading: 'DropdownButton',
                            ),
                            ShowcaseItem(
                              heading: 'DropdownMenu',
                            ),
                            ShowcaseItem(
                              heading: 'ExtendedFloatingActionButton',
                            ),
                            ShowcaseItem(
                              heading: 'FloatingActionButton',
                            ),
                            ShowcaseItem(
                              heading: 'IconButton',
                            ),
                            ShowcaseItem(
                              heading: 'PopupMenuButton',
                            ),
                            ShowcaseItem(
                              heading: 'RefreshIndicator',
                            ),
                            ShowcaseItem(
                              heading: 'SegmentedButton',
                            ),
                          ],
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Communication',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            // - Badge
                            // - CircularProgressIndicator
                            // - LinearProgressIndicator
                            // - SnackBar
                            // - Tooltip
                          ],
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Containment',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            // - AlertDialog
                            // - BottomSheet
                            // - Card
                            // - DataTable
                            // - Divider
                            // - ExpansionPanel
                            // - ListTile
                            // - SimpleDialog
                            // - Stepper
                          ],
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Navigation',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            // - AppBar
                            // - BottomAppBar
                            // - BottomNavigationBar
                            // - Drawer
                            // - NavigationBar
                            // - NavigationDrawer
                            // - NavigationRail
                            // - SliverAppBar
                            // - TabBar
                          ],
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Selection',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            // - CarouselView
                            // - Checkbox
                            // - Chip
                            // - DatePicker
                            // - Menu
                            // - Radio
                            // - Slider
                            // - Switch
                            // - TimePicker
                          ],
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Text',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            // - Text
                            // - TextField
                          ],
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(height: 32,),
              ],
            ),
          ),          
          Spacer(flex: 1,),
        ],
      ),
    );
  }
}

class ShowcaseItem extends StatelessWidget {
  final String heading;
  final Widget child;

  const ShowcaseItem({
    super.key,
    required this.heading,
    this.child = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueGrey,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: Theme.of(context).textTheme.headlineMedium
            ),
            SizedBox(height: 8,),
            child
          ],
        ),
      )
    );
  }
}