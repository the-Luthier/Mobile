// ignore_for_file: unused_import, library_private_types_in_public_api, unnecessary_import

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:untitled/pages/notifications.dart';
import 'denemegpt4.dart';
import 'pages/intro.dart';
import 'pages/error.dart';
import 'pages/faq.dart';
import 'pages/packages.dart';
import 'pages/services.dart';
import 'pages/special.dart';
import 'pages/support.dart';
import 'pages/user_info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
      routes: {
        '/home': (BuildContext context) => const HomePage(),
      },
    );
  }
}
