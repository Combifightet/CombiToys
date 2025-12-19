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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth/7),
                child: Text('This Page is only used to preview the global Theme on most flutter widgets.'),
              ),
              SizedBox(height: 32,),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth/7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Actions',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Divider(),
                        SizedBox(height: 8),
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
                              child: RefreshProgressIndicator(),
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
                        SizedBox(height: 32),
                        Text(
                          'Communication',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Divider(),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ShowcaseItem(
                              heading: 'Badge',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Text('Normal:'),
                                      SizedBox(height: 27),
                                      Text('Count:'),
                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: null,
                                        icon: Badge(
                                          label: Text('Badge'),
                                          child: const Icon(Icons.question_answer)
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      IconButton(
                                        onPressed: null,
                                        icon: Badge.count(
                                          count: 100,
                                          maxCount: 99,
                                          child: const Icon(Icons.question_answer)
                                        ),
                                      )
                                    ]
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'CircularProgressIndicator',
                              child:  CircularProgressIndicator()
                            ),
                            ShowcaseItem(
                              heading: 'LinearProgressIndicator',
                              child: SizedBox(
                                width: 300,
                                child: LinearProgressIndicator()
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'SnackBar',
                              child: ElevatedButton(
                                onPressed: () {
                                  final snackBar = SnackBar(
                                    content: const Text('A SnackBar.'),
                                    action: SnackBarAction(
                                      label: 'close',
                                      onPressed: () {
                                        // Some code to undo the change.
                                      },
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                child: Text('show SnackBar')
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Tooltip',
                              child: Tooltip(
                                message: 'Tooltip',
                                child: IconButton(
                                  onPressed: null,
                                  icon: const Icon(Icons.help)
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Text(
                          'Containment',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Divider(),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ShowcaseItem(
                              heading: 'AlertDialog',
                              child: ElevatedButton(
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: const Text('AlertDialog Title'),
                                    content: const Text('AlertDialog description'),
                                    actions: <Widget>[
                                      TextButton(onPressed: () => Navigator.pop(context, 'close'), child: const Text('close')),
                                    ],
                                  )
                                ),
                                child: Text('show AlertDialog')
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'BottomSheet',
                              child: ElevatedButton(
                                onPressed: () => showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) => BottomSheet(
                                    onClosing: () {},
                                    builder: (BuildContext context) => SizedBox(
                                      height: 200,
                                      child: Center(child: Text('Bottom Sheet Content'))
                                    ),
                                  )
                                ),
                                child: Text('show BottomSheet')
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Card',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 26),
                                      Text('Normal:'),
                                      SizedBox(height: 56),
                                      Text('Filled:'),
                                      SizedBox(height: 56),
                                      Text('Outlined:'),
                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Card(
                                        child: SizedBox(width: 80, height: 60),
                                      ),
                                      SizedBox(height: 8),
                                      Card.filled(
                                        child: SizedBox(width: 80, height: 60),
                                      ),
                                      SizedBox(height: 8),
                                      Card.outlined(
                                        child: SizedBox(width: 80, height: 60),
                                      )
                                    ]
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'DataTable',
                              child: DataTable(
                                onSelectAll: (_) {},
                                sortAscending: false,
                                sortColumnIndex: 1,
                                columns: <DataColumn>[
                                  DataColumn(
                                    onSort: (_, __) {},
                                    label: Expanded(
                                      child: Text('Name', style: TextStyle(fontStyle: FontStyle.italic)),
                                    ),
                                  ),
                                  DataColumn(
                                    onSort: (_, __) {},
                                    label: Expanded(
                                      child: Text('Age', style: TextStyle(fontStyle: FontStyle.italic)),
                                    ),
                                  ),
                                  DataColumn(
                                    onSort: (_, __) {},
                                    label: Expanded(
                                      child: Text('Role', style: TextStyle(fontStyle: FontStyle.italic)),
                                    ),
                                  ),
                                ],
                                rows: <DataRow>[
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text('Sarah')),
                                      DataCell(Text('19')),
                                      DataCell(Text('Student')),
                                    ],
                                    onSelectChanged: (_) {}
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text('William')),
                                      DataCell(Text('27')),
                                      DataCell(Text('Associate Professor')),
                                    ],
                                    onSelectChanged: (_) {}
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text('Janine')),
                                      DataCell(Text('43')),
                                      DataCell(Text('Professor')),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Divider',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Normal:'),
                                      SizedBox(height: 21),
                                      Text('Vertical:'),
                                      SizedBox(height: 21),
                                      Text('PopupMenu:'),
                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 3),
                                      SizedBox(
                                        width: 100,
                                        child: Divider()
                                      ),
                                      SizedBox(height: 8),
                                      SizedBox(
                                        height: 50,
                                        child: VerticalDivider()
                                      ),
                                      SizedBox(height: 8),
                                      SizedBox(
                                        width: 100,
                                        child: PopupMenuDivider()
                                      ),
                                    ]
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'ExpansionPanelList',
                              child: SizedBox(
                                width: 250,
                                child: ExpansionPanelList(
                                expansionCallback: (int index, bool isExpanded) {},
                                children: [
                                  ExpansionPanel(
                                    canTapOnHeader: true,
                                    headerBuilder: (BuildContext context, bool isExpanded) {
                                      return ListTile(title: Text('Item 1'),);
                                    },
                                    body: ListTile(
                                      title: Text('Title'),
                                      subtitle: Text('Subtitle'),
                                      onTap: () {},
                                    ),
                                    isExpanded: true
                                  ),
                                  ExpansionPanel(
                                    canTapOnHeader: true,
                                    headerBuilder: (BuildContext context, bool isExpanded) {
                                      return ListTile(title: Text('Item 2'),);
                                    },
                                    body: ListTile(
                                      title: Text('Title'),
                                      subtitle: Text('Subtitle'),
                                      onTap: () {},
                                    ),
                                    isExpanded: false
                                  ),
                                  ExpansionPanel(
                                    headerBuilder: (BuildContext context, bool isExpanded) {
                                      return ListTile(title: Text('Item 3'),);
                                    },
                                    body: ListTile(
                                      title: Text('Title'),
                                      subtitle: Text('Subtitle'),
                                      onTap: () {},
                                    ),
                                    isExpanded: false
                                  ),
                                ],
                                                            ),
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'ListTile',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 24),
                                      Text('Normal:'),
                                      SizedBox(height: 50),
                                      Text('Selected:'),
                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: ListTile(
                                          leading: Icon(Icons.help),
                                          title: Text('Title'),
                                          subtitle: Text('Subtitle'),
                                          trailing: Icon(Icons.help),
                                          selected: false,
                                          onTap: () {},
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      SizedBox(
                                        width: 200,
                                        child: ListTile(
                                          leading: Icon(Icons.help),
                                          title: Text('Title'),
                                          subtitle: Text('Subtitle'),
                                          trailing: Icon(Icons.help),
                                          selected: true,
                                          onTap: () {},
                                        ),
                                      )
                                    ]
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'SimpleDialog',
                              child: ElevatedButton(
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) => SimpleDialog(
                                    title: const Text('SimpleDialog Title'),
                                    children: [
                                      Text('Child 1'),
                                      SizedBox(height: 8),
                                      Text('Child 2'),
                                      SizedBox(height: 8),
                                      Text('Child 3'),
                                    ],
                                  )
                                ),
                                child: Text('show SimpleDialog')
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Stepper',
                              child: SizedBox(
                                width: 300,
                                child: Stepper(
                                  currentStep: 1,
                                  onStepCancel: () {},
                                  onStepContinue: () {},
                                  onStepTapped: (_) {},
                                  steps: [
                                    Step(
                                      title: Text('Step 1'),
                                      content: Text('Content for step 1')
                                    ),
                                    Step(
                                      title: Text('Step 2'),
                                      content: Text('Content for step 2')
                                    ),
                                    Step(
                                      title: Text('Step 3'),
                                      content: Text('Content for step 3')
                                    ),
                                  ]
                                ),
                              )
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Text(
                          'Navigation',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Divider(),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ShowcaseItem(
                              heading: 'AppBar',
                              child: SizedBox(
                                width: 250,
                                height: 100,
                                child: Scaffold(
                                  appBar: AppBar(
                                    title: Text('Title'),
                                    leading: BackButton(
                                      onPressed: () {},
                                    ),
                                    actions: [
                                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                                      IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'BottomAppBar',
                              child: SizedBox(
                                width: 250,
                                height: 150,
                                child: Scaffold(
                                  bottomNavigationBar: BottomAppBar(
                                    child: Row(
                                      children: [
                                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                                      ],
                                    ),
                                  ),
                                  floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
                                  floatingActionButton: FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'BottomNavigationBar',
                              child: SizedBox(
                                width: 270,
                                height: 100,
                                child: Scaffold(
                                  bottomNavigationBar: BottomNavigationBar(
                                    items: [
                                      BottomNavigationBarItem(
                                        icon: Icon(Icons.home),
                                        label: 'Home'
                                      ),
                                      BottomNavigationBarItem(
                                        icon: Icon(Icons.business),
                                        label: 'Business'
                                      ),
                                      BottomNavigationBarItem(
                                        icon: Icon(Icons.school),
                                        label: 'School'
                                      ),
                                    ]
                                  )
                                )
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Drawer',
                              child: SizedBox(
                                width: 350,
                                height: 300,
                                child: Scaffold(
                                  appBar: AppBar(),
                                  drawer: Drawer(
                                    child: ListView(
                                      children: [
                                        DrawerHeader(
                                          child: Text('Header')
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.message),
                                          title: Text('Messages'),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.account_circle),
                                          title: Text('Profile'),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              )
                            ),
                            ShowcaseItem(
                              heading: 'NavigationBar',
                              child: SizedBox(
                                width: 250,
                                height: 150,
                                child: Scaffold(
                                  bottomNavigationBar: NavigationBar(
                                    destinations: [
                                      NavigationDestination(
                                        icon: Icon(Icons.home),
                                        label: 'Home'
                                      ),
                                      NavigationDestination(
                                        icon: Icon(Icons.business),
                                        label: 'Business'
                                      ),
                                      NavigationDestination(
                                        icon: Icon(Icons.school),
                                        label: 'School',
                                        enabled: false,
                                      ),
                                    ]
                                  )
                                )
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'NavigationDrawer',
                              child: SizedBox(
                                width: 350,
                                height: 250,
                                child: Scaffold(
                                  appBar: AppBar(),
                                  endDrawer: NavigationDrawer(
                                    header: Text('Header'),
                                    footer: Text('Footer'),
                                    children: [
                                      NavigationDrawerDestination(
                                        icon: Icon(Icons.home),
                                        label: Text('Home')
                                      ),
                                      NavigationDrawerDestination(
                                        icon: Icon(Icons.business),
                                        label: Text('Business')
                                      ),
                                      NavigationDrawerDestination(
                                        icon: Icon(Icons.school),
                                        label: Text('School'),
                                        enabled: false,
                                      ),
                                    ]
                                  ),
                                )
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'NavigationRail',
                              child: SizedBox(
                                height: 250,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    NavigationRail(
                                      leading: Text('leading'),
                                      trailing: Text('trailing'),
                                      destinations: [
                                        NavigationRailDestination(
                                          icon: Icon(Icons.home),
                                          label: Text('Home')
                                        ),
                                        NavigationRailDestination(
                                          icon: Icon(Icons.business),
                                          label: Text('Business')
                                        ),
                                        NavigationRailDestination(
                                          icon: Icon(Icons.school),
                                          label: Text('School'),
                                          disabled: true,
                                        ),
                                      ],
                                      selectedIndex: 0
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'SliverAppBar',
                              child: SizedBox(
                                width: 1000,
                                height: 200,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CustomScrollView(
                                        slivers: [
                                          SliverAppBar(
                                            title: Text('Standard'),
                                          ),
                                          SliverFillRemaining(),
                                          SliverFillRemaining(),
                                          SliverFillRemaining(),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomScrollView(
                                        slivers: [
                                          SliverAppBar.medium(
                                            title: Text('Medium'),
                                          ),
                                          SliverFillRemaining(),
                                          SliverFillRemaining(),
                                          SliverFillRemaining(),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomScrollView(
                                        slivers: [
                                          SliverAppBar.large(
                                            title: Text('Large'),
                                          ),
                                          SliverFillRemaining(),
                                          SliverFillRemaining(),
                                          SliverFillRemaining(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            ShowcaseItem(
                              heading: 'TabBar',
                              child: SizedBox(
                                width: 300,
                                height: 200,
                                child: DefaultTabController(
                                  length: 3,
                                  child: Scaffold(
                                    appBar: AppBar(
                                      title: Text('Primary and secondary'),
                                      automaticallyImplyLeading: false,
                                      bottom: TabBar(
                                        tabs: [
                                          Tab(
                                            text: 'Home',
                                            icon: Icon(Icons.home),
                                          ),
                                          Tab(
                                            text: 'Work',
                                            icon: Icon(Icons.business),
                                          ),
                                          Tab(
                                            text: 'School',
                                            icon: Icon(Icons.school),
                                          ),
                                        ]
                                      )
                                    ),
                                    body: DefaultTabController(
                                      length: 2,
                                      child: DefaultTabController(
                                        length: 2,
                                        child: TabBar.secondary(
                                          tabs: [
                                            Tab(text: 'Overview'),
                                            Tab(text: 'Details'),
                                          ]
                                        ),
                                      ),
                                    )
                                  ),
                                )
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Text(
                          'Selection',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Divider(),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ShowcaseItem(
                              heading: 'CarouselView',
                              child: SizedBox(
                                width: 250,
                                height: 75,
                                child: CarouselView(
                                  controller: CarouselController(initialItem: 1),
                                  itemExtent: 100,
                                  children: [
                                    Container(),
                                    Container(),
                                    Container(),
                                  ]
                                ),
                              )
                            ),
                            ShowcaseItem(
                              heading: 'Checkbox',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(value: true, onChanged: (_) {}),
                                      Checkbox(value: false, onChanged: (_) {}),
                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Checkbox(value: true, onChanged: null),
                                      Checkbox(value: false, onChanged: null),
                                    ]
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Chip',
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Chip(
                                    label: Text('Normal')
                                  ),
                                  SizedBox(height: 8),
                                  Chip(
                                    avatar: Icon(Icons.account_circle),
                                    label: Text('avatar')
                                  ),
                                  SizedBox(height: 8),
                                  Chip(
                                    label: Text('Delete'),
                                    onDeleted: () {},
                                  ),
                                ]
                              )
                            ),
                            ShowcaseItem(
                              heading: 'DatePicker',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DatePickerDialog(
                                    firstDate: DateTime.fromMillisecondsSinceEpoch(0), 
                                    lastDate: DateTime.now(),
                                    currentDate: DateTime.now(),
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Radio',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RadioGroup(
                                    groupValue: 1,
                                    onChanged: (_) {},
                                    child: Column(
                                      children: [
                                        Radio(value: 0),
                                        Radio(value: 1),
                                      ],
                                    )
                                  ),
                                  RadioGroup(
                                    groupValue: 1,
                                    onChanged: (_) {},
                                    child: Column(
                                      children: [
                                        Radio(value: 0, enabled: false),
                                        Radio(value: 1, enabled: false),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Slider',
                              child: SizedBox(
                                width: 250,
                                child: Slider(
                                  min: 0,
                                  max: 100,
                                  value: 33,
                                  secondaryTrackValue: 67,
                                  onChanged: (_) {},
                                  divisions: 10,
                                  label: '33',
                                ),
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'Switch',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Switch(
                                        value: true,
                                        onChanged: (_) {}
                                      ),
                                      Switch(
                                        value: false,
                                        onChanged: (_) {}
                                      )
                                    ]
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Switch(
                                        value: true,
                                        onChanged: null
                                      ),
                                      Switch(
                                        value: false,
                                        onChanged: null
                                      )
                                    ]
                                  )
                                ],
                              ),
                            ),
                            ShowcaseItem(
                              heading: 'TimePicker',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TimePickerDialog(
                                    initialTime: TimeOfDay.now()
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Text(
                          'Text',
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Divider(),
                        SizedBox(height: 8),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                  )
                ),
              ),
              SizedBox(height: 32,),
            ],
          );
        }
      )
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