// ignore_for_file: unused_import, library_private_types_in_public_api, unnecessary_import

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:untitled/pages/notifications.dart';

import 'pages/error.dart';
import 'pages/faq.dart';
import 'pages/packages.dart';
import 'pages/services.dart';
import 'pages/special.dart';
import 'pages/support.dart';
import 'pages/user_info.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  get navigatorKeyPage => null;

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
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_shipping),
              title: const Text("Paketler"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/packages');
              },
            ),
            ListTile(
              leading: const Icon(Icons.support),
              title: const Text("Destek"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/support');
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text("Bana Özel"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/special');
              },
            ),
            ListTile(
              leading: const Icon(Icons.error),
              title: const Text("Arıza Bildirimi"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/error');
              },
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text("Hizmetlerimiz"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/services');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Sıkça Sorulan Sorular"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/faq');
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Bildirimler"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/notifications');
              },
            ),
            ListTile(
              leading: const Icon(Icons.subscriptions),
              title: const Text("Abonelikler"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/subscriptions');
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text("Altyapı Sorgulama"),
              onTap: () {
                Navigator.pop(context);
                navigatorKey.currentState?.pushNamed('/development');
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Bize Ulaşın"),
              onTap: () {
                Navigator.pop(context);
                navigatorKeyPage.currentState.pushNamed('/contact_us');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("NetGalaksi'ye Hoş Geldiniz"),
      ),
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder? builder;
          switch (settings.name) {
            case '/profile':
              builder = (BuildContext context) => const ProfilePage(
                    address: '',
                    email: '',
                    firstName: '',
                    fullName: '',
                    lastName: '',
                    phoneNumber: '',
                    userID: '',
                  );
              break;
            case '/packages':
              builder = (BuildContext context) => const PackagesPage();
              break;
            case '/support':
              builder = (BuildContext context) => const SupportPage();
              break;
            case '/special':
              builder =
                  (BuildContext context) => const SpecialPage(fullName: '');
              break;
            case '/error':
              builder = (BuildContext context) => const ErrorPage();
              break;
            case '/services':
              builder = (BuildContext context) =>
                  const SevenButtonsPage(fullName: '');
              break;
            case '/faq':
              builder = (BuildContext context) => const FaqPage();
              break;
            case '/notifications':
              builder = (BuildContext context) => const NotificationsPage();
              break;
            default:
              builder = (BuildContext context) => const Center(
                    child: Text("NetGalaksi'ye Hoş Geldiniz"),
                  );
          }
          return MaterialPageRoute(builder: builder);
        },
      ),
    );
  }
}
