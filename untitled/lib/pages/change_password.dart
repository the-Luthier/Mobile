// ignore_for_file: unused_field, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  String _currentPassword = '';
  String _newPassword = '';
  String _confirmNewPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Şifre Değiştir'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Güncel Şifrenizi Girin.'),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  _currentPassword = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Yeni bir şifre oluşturun.'),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  _newPassword = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Yeni şifrenizi tekrar girin.'),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  _confirmNewPassword = value;
                });
              },
            ),
            Center(
               child: ElevatedButton(
                 onPressed: () {
                 },
                 style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                 ),child: const Text(
                   'Şifre Değiştir',
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )

               ),
            ),
          ],
        ),
      ),
    );
  }
}
