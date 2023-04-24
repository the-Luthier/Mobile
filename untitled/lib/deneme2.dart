// ignore_for_file: prefer_final_fields, library_private_types_in_public_api

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedDrawerIndex = 0;

  List<String> _drawerItemNames = [
    'Profile',
    'Packages',
    'Support',
    'Special',
    'Error',
    'Services',
    'FAQ',
    'Notifications',
    'Subscriptions',
    'Infrastructure',
    'Contact Us',
  ];

  late List<Widget> _drawerItems;

  @override
  void initState() {
    super.initState();
    _drawerItems = _drawerItemNames.map((name) {
      return ListTile(
        leading: Icon(_getIconData(name)),
        title: Text(name),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/$name');
        },
      );
    }).toList();
  }

  IconData _getIconData(String name) {
    switch (name) {
      case 'Profile':
        return Icons.person;
      case 'Packages':
        return Icons.card_giftcard;
      case 'Support':
        return Icons.support;
      case 'Special':
        return Icons.star;
      case 'Error':
        return Icons.error;
      case 'Services':
        return Icons.build;
      case 'FAQ':
        return Icons.question_answer;
      case 'Notifications':
        return Icons.notifications;
      case 'Subscriptions':
        return Icons.subscriptions;
      case 'Infrastructure':
        return Icons.apartment;
      case 'Contact Us':
        return Icons.phone;
      default:
        return Icons.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _drawerItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: index == _selectedDrawerIndex
                  ? BoxDecoration(
                      color: Colors.pink,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )
                  : null,
              child: _drawerItems[index],
            );
          },
        ),
      ),
      body: const Center(
        child: Text('Welcome to My App'),
      ),
    );
  }
}
