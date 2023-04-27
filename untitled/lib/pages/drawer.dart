// ignore_for_file: unused_import

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
import 'models/model_subscription.dart';
import 'pages/development.dart';
import 'pages/subscriptions.dart';

class MyDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyDrawer({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.pink),
            child: Text('NetGalaksi',
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          _drawerIconButton(Icons.person, 'Profilim', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfilePage(
                          address: '',
                          email: '',
                          firstName: '',
                          lastName: '',
                          phoneNumber: '',
                          userID: '',
                          fullName: '',
                        )));
          }),
          _drawerIconButton(Icons.local_shipping, 'Paketler', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PackagesPage()));
          }),
          _drawerIconButton(Icons.support, 'Destek', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SupportPage()));
          }),
          _drawerIconButton(Icons.star, 'Bana Özel', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SpecialPage(
                          fullName: '',
                        )));
          }),
          _drawerIconButton(Icons.error, 'Arıza Bildirimi', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ErrorPage()));
          }),
          _drawerIconButton(Icons.build, 'Hizmetlerimiz', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SevenButtonsPage(
                          fullName: '',
                        )));
          }),
          _drawerIconButton(Icons.help_outline, 'Sıkça Sorulan Sorular', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FaqPage()));
          }),
          _drawerIconButton(Icons.notifications, 'Bildirimlerim', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationsPage()));
          }),
          _drawerIconButton(Icons.subscriptions, 'Aboneliklerim', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SubscriptionListPage()));
          }),
          _drawerIconButton(Icons.business, 'Altyapı Sorgulama', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DevelopmentPage()));
          }),
          _drawerIconButton(Icons.contact_mail, 'Bize Ulaşın', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactUsPage()));
          }),
        ],
      ),
    );
  }

  Widget _drawerIconButton(
      IconData icon, String title, void Function() onPressed) {
    return ListTile(
      title: Column(
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: () {
              Navigator.pop(scaffoldKey.currentContext!);
              onPressed();
            },
          ),
          Text(title),
        ],
      ),
    );
  }
}
