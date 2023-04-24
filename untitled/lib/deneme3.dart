// ignore_for_file: prefer_final_fields, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:untitled/pages/development.dart';

import 'pages/faq.dart';
import 'pages/notifications.dart';
import 'pages/user_info.dart';
import 'pages/packages.dart';
import 'pages/support.dart';
import 'pages/special.dart';
import 'pages/error.dart';
import 'pages/services.dart';
import 'pages/contact_us.dart';
import 'pages/subscriptions.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedDrawerIndex = 0;

  Map<String, Widget> _pages = {
    'Profile': const ProfilePage(
      address: '',
      email: '',
      firstName: '',
      fullName: '',
      lastName: '',
      phoneNumber: '',
      userID: '',
    ),
    'Packages': const PackagesPage(),
    'Support': const SupportPage(),
    'Special': const SpecialPage(
      fullName: '',
    ),
    'Error': const ErrorPage(),
    'Services': const SevenButtonsPage(
      fullName: '',
    ),
    'FAQ': const FaqPage(),
    'Notifications': const NotificationsPage(),
    'Subscriptions': SubscriptionListPage(),
    'Infrastructure': const DevelopmentPage(),
    'Contact Us': const ContactUsPage(),
  };

  void _navigateToPage(String routeName) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        // Use a Builder widget to ensure that a non-null widget is always returned
        return Builder(
          builder: (BuildContext context) {
            final Widget? page = _pages[routeName];
            if (page != null) {
              return page;
            } else {
              // If the route is not found, return a simple error message
              return const Scaffold(
                body: Center(
                  child: Text('Page not found'),
                ),
              );
            }
          },
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int index) {
            final String routeName = _pages.keys.elementAt(index);
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
              child: ListTile(
                leading: Icon(_getIconData(routeName)),
                title: Text(routeName),
                onTap: () {
                  _navigateToPage(routeName);
                  setState(() {
                    _selectedDrawerIndex = index;
                  });
                },
              ),
            );
          },
        ),
      ),
      body: const Center(
        child: Text('Welcome to My App'),
      ),
    );
  }

  IconData _getIconData(String routeName) {
    switch (routeName) {
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
        return Icons.contacts;
      default:
        return Icons.error;
    }
  }
}
