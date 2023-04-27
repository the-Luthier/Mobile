// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'pages/drawer.dart'; // Import the MyDrawer widget from the separate file

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;

  const BasePage({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MyDrawer(scaffoldKey: key as GlobalKey<ScaffoldState>),
      body: body,
    );
  }
}
