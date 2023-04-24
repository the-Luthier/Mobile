// ignore_for_file: unused_import, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'pages/faq.dart';
import 'pages/notifications.dart';
import 'pages/user_info.dart';
import 'pages/packages.dart';
import 'pages/support.dart';
import 'pages/special.dart';
import 'pages/error.dart';
import 'pages/services.dart';
import 'pages/contact_us.dart';
import 'pages/development.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map<String, Widget> _pages = {
    '/user_info': const ProfilePage(
      fullName: 'Your Full Name',
      email: 'your.email@example.com',
      phoneNumber: '1234567890',
      userID: '1234',
      address: 'Your Address',
      firstName: 'Your First Name',
      lastName: 'Your Last Name',
    ),
    '/packages': const PackagesPage(),
    '/support': const SupportPage(),
    '/special': const SpecialPage(
      fullName: 'Your Full Name',
    ),
    '/error': const ErrorPage(),
    '/services': const SevenButtonsPage(
      fullName: 'Your Full Name',
    ),
    '/faq': const FaqPage(),
    '/notifications': const NotificationsPage(),
    '/subscriptions': const DevelopmentPage(),
    '/infrastructure': const DevelopmentPage(),
    '/contact_us': const ContactUsPage(),
  };

  void _navigateToPage(String routeName) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return Builder(
          builder: (BuildContext context) {
            final Widget? page = _pages[routeName];
            if (page != null) {
              return page;
            } else {
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
        title: const Text("NETGALAKSI"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text("Menü"),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profilim"),
              onTap: () {
                _navigateToPage('/user_info');
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_shipping),
              title: const Text("Paketler"),
              onTap: () {
                _navigateToPage('/packages');
              },
            ),
            ListTile(
              leading: const Icon(Icons.support),
              title: const Text("Destek"),
              onTap: () {
                _navigateToPage('/support');
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text("Bana Özel"),
              onTap: () {
                _navigateToPage('/special');
              },
            ),
            ListTile(
              leading: const Icon(Icons.error),
              title: const Text("Arıza Bildirimi"),
              onTap: () {
                _navigateToPage('/error');
              },
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text("Hizmetlerimiz"),
              onTap: () {
                _navigateToPage('/services');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Sıkça Sorulan Sorular"),
              onTap: () {
                _navigateToPage('/faq');
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Bildirimler"),
              onTap: () {
                _navigateToPage('/notifications');
              },
            ),
            ListTile(
              leading: const Icon(Icons.subscriptions),
              title: const Text("Abonelikler"),
              onTap: () {
                _navigateToPage('/subscriptions');
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text("Altyapı Sorgulama"),
              onTap: () {
                _navigateToPage('/infrastructure');
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Bize Ulaşın"),
              onTap: () {
                _navigateToPage('/contact_us');
              },
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
