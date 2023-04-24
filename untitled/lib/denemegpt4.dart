// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:untitled/models/model_subscription.dart';
import 'package:untitled/pages/development.dart';
import 'package:untitled/pages/subscriptions.dart';

import 'pages/faq.dart';
import 'pages/notifications.dart';
import 'pages/user_info.dart';
import 'pages/packages.dart';
import 'pages/support.dart';
import 'pages/special.dart';
import 'pages/error.dart';
import 'pages/services.dart';
import 'pages/contact_us.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetGalaksi',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('NetGalaksi'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _openDrawer,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('NetGalaksi',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            _drawerIconButton(
                Icons.person,
                'Profilim',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage(
                              address: '',
                              email: '',
                              firstName: '',
                              fullName: '',
                              lastName: '',
                              phoneNumber: '',
                              userID: '',
                            )))),
            _drawerIconButton(
                Icons.local_shipping,
                'Paketler',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SevenButtonsPage(
                              fullName: '',
                            )))),
            _drawerIconButton(
                Icons.support,
                'Destek',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SupportPage()))),
            _drawerIconButton(
                Icons.star,
                'Bana Özel',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpecialPage(
                              fullName: '',
                            )))),
            _drawerIconButton(
                Icons.error,
                'Arıza Bildirimi',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ErrorPage()))),
            _drawerIconButton(
                Icons.build,
                'Hizmetlerimiz',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SevenButtonsPage(
                              fullName: '',
                            )))),
            _drawerIconButton(
                Icons.help_outline,
                'Sıkça Sorulan Sorular',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FaqPage()))),
            _drawerIconButton(
                Icons.notifications,
                'Bildirimlerim',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationsPage()))),
            _drawerIconButton(
                Icons.subscriptions,
                'Aboneliklerim',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SubscriptionListPage()))),
            _drawerIconButton(
                Icons.business,
                'Altyapı Sorgulama',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DevelopmentPage()))),
            _drawerIconButton(
                Icons.contact_mail,
                'Bize Ulaşın',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactUsPage()))),
          ],
        ),
      ),
      body: const Center(child: Text('NETGALAKSİYE HOŞGELDİNİZ')),
    );
  }

  Widget _drawerIconButton(IconData icon, String title, Function onPressed) {
    return ListTile(
      title: Column(
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: () {
              Navigator.pop(context);
              onPressed();
            },
          ),
          Text(title),
        ],
      ),
    );
  }
}
