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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque bibendum est mauris, eu malesuada est ultricies eget. In hac habitasse platea dictumst. Fusce a lacinia mi, ut efficitur orci. Aliquam erat volutpat.'),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Actions'),
                  SizedBox(
                    height: 8,
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      Card(),
                      Card(),
                      Card(),
                      
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Communication'),
                  SizedBox(
                    height: 8,
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      Card(),
                      Card(),
                      Card(),
                      
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}