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
                Text('This Page is only used to preview the global Theme on most flutter widgets.'),
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
                                    children: [
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
                                    children: [
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
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  DropdownButton(
                                    value: 1,
                                    icon: const Icon(Icons.arrow_downward),
                                    items: [
                                      DropdownMenuItem(value: 1, child: Text('Item 1')),
                                      DropdownMenuItem(value: 2, child: Text('Item 2')),
                                      DropdownMenuItem(value: 3, child: Text('Item 3')),
                                    ],
                                    onChanged: (_) {}
                                  ),
                                  SizedBox(height: 8,),
                                  DropdownButton(
                                    value: 1,
                                    icon: const Icon(Icons.arrow_downward),
                                    items: [
                                      DropdownMenuItem(value: 1, child: Text('Item 1')),
                                    ],
                                    onChanged: null
                                  ),
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'DropdownMenu',
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  DropdownMenu(
                                    initialSelection: 1,
                                    enableFilter: true,
                                    dropdownMenuEntries: [
                                      DropdownMenuEntry(value: 1, label: 'Item 1'),
                                      DropdownMenuEntry(value: 2, label: 'Item 2'),
                                      DropdownMenuEntry(value: 3, label: 'Item 3'),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  DropdownMenu(
                                    enabled: false,
                                    initialSelection: 1,
                                    dropdownMenuEntries: [
                                      DropdownMenuEntry(value: 1, label: 'Item 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'FloatingActionButton',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Text('Small:'),
                                      SizedBox(height: 34),
                                      Text('Regular:'),
                                      SizedBox(height: 64),
                                      Text('Large:'),
                                      SizedBox(height: 64),
                                      Text('Extended:'),
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    children: [
                                      FloatingActionButton.small(
                                        onPressed: () {},
                                        heroTag: 'small',
                                        child: const Icon(Icons.check)
                                      ),
                                      SizedBox(height: 8),
                                      FloatingActionButton(
                                        onPressed: () {},
                                        heroTag: 'normal',
                                        child: const Icon(Icons.check)
                                      ),
                                      SizedBox(height: 8),
                                      FloatingActionButton.large(
                                        onPressed: () {},
                                        heroTag: 'large',
                                        child: const Icon(Icons.check)
                                      ),
                                      SizedBox(height: 8),
                                      FloatingActionButton.extended(
                                        onPressed: () {},
                                        heroTag: 'extended',
                                        label: Text('OK'), icon: const Icon(Icons.check)
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    children: [
                                      FloatingActionButton.small(
                                        onPressed: null,
                                        heroTag: 'small_disabled',
                                        child: const Icon(Icons.check)
                                      ),
                                      SizedBox(height: 8),
                                      FloatingActionButton(
                                        onPressed: null,
                                        heroTag: 'normal_disabled',
                                        child: const Icon(Icons.check)
                                      ),
                                      SizedBox(height: 8),
                                      FloatingActionButton.large(
                                        onPressed: null,
                                        heroTag: 'large_disabled',
                                        child: const Icon(Icons.check)
                                      ),
                                      SizedBox(height: 8),
                                      FloatingActionButton.extended(
                                        onPressed: null,
                                        heroTag: 'extended_disabled',
                                        label: Text('OK'), icon: const Icon(Icons.check)
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'IconButton',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Text('Normal:'),
                                      SizedBox(height: 27),
                                      Text('Filled:'),
                                      SizedBox(height: 27),
                                      Text('FilledTonal:'),
                                      SizedBox(height: 27),
                                      Text('Outlined:'),
                                      SizedBox(height: 27),
                                    ],
                                  ),
                                  SizedBox(width: 16,),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8),
                                      IconButton.filled(onPressed: () {}, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8),
                                      IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8),
                                      IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(onPressed: null, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8,),
                                      IconButton.filled(onPressed: null, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8,),
                                      IconButton.filledTonal(onPressed: null, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8,),
                                      IconButton.outlined(onPressed: null, icon: const Icon(Icons.add)),
                                      SizedBox(height: 8,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'PopupMenuButton',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  PopupMenuButton(
                                    initialValue: 1,
                                    onSelected: null,
                                    itemBuilder: (_) => [
                                      const PopupMenuItem(value: 1, child: Text('Item 1')),
                                      const PopupMenuItem(value: 2, child: Text('Item 2')),
                                      const PopupMenuItem(value: 3, child: Text('Item 3')),
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  PopupMenuButton(
                                    enabled: false,
                                    initialValue: 1,
                                    onSelected: null,
                                    itemBuilder: (_) => [
                                      const PopupMenuItem(value: 1, child: Text('Item 1')),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'RefreshIndicator',
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: RefreshProgressIndicator()
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'SegmentedButton',
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SegmentedButton(
                                    segments: [
                                      ButtonSegment(
                                        value: 0,
                                        label: Text('0')
                                      ),
                                      ButtonSegment(
                                        value: 1,
                                        label: Text('1')
                                      ),
                                      ButtonSegment(
                                        value: 2,
                                        label: Text('2')
                                      )
                                    ],
                                    selected: {1},
                                    onSelectionChanged: (_) {},
                                  ),
                                  SizedBox(height: 8),
                                  SegmentedButton(
                                    segments: [
                                      ButtonSegment(
                                        value: 0,
                                        label: Text('0')
                                      ),
                                      ButtonSegment(
                                        value: 1,
                                        label: Text('1')
                                      ),
                                      ButtonSegment(
                                        value: 2,
                                        label: Text('2')
                                      )
                                    ],
                                    selected: {1},
                                    onSelectionChanged: null,
                                  ),
                                ],
                              ),
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
                            ShowcaseItem(
                              heading: 'Title',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  )
                                ],
                              ),
                            ),
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
                            ShowcaseItem(
                              heading: 'Title',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  )
                                ],
                              ),
                            ),
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
                            ShowcaseItem(
                              heading: 'Title',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  )
                                ],
                              ),
                            ),
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
                            ShowcaseItem(
                              heading: 'Title',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  )
                                ],
                              ),
                            ),
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
                            ShowcaseItem(
                              heading: 'Title',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                    ]
                                  )
                                ],
                              ),
                            ),
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