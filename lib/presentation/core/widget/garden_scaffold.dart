import 'package:flutter/material.dart';

class GardenScaffold extends StatelessWidget {
  final Widget body;
  final String appBarText;
  final Widget? bottomNavigationBar;

  const GardenScaffold({
    required this.body,
    required this.appBarText,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: body,
      appBar: AppBar(title: Text(appBarText),),
    );
  }
}
