// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatelessWidget {
  final String fullName;
  final String firstName;
  final String lastName;
  final String userID;
  final String phoneNumber;
  final String email;
  final String address;

  const ProfilePage({
    super.key,
    required this.fullName,
    required this.firstName,
    required this.lastName,
    required this.userID,
    required this.phoneNumber,
    required this.email,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profilim'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              fullName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adınız: $firstName',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Soyadınız: $lastName',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Müşteri Numaranız: $userID',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Telefon Numaranız: $phoneNumber',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'E-posta Adresiniz: $email',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Addresiniz: $address',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // redirect to edit profile page
                      },
                      child: const Text('Profil Bilgilerinizi Düzenleyin'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // redirect to change password page
                      },
                      child: const Text('Şifre Değiştirin'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // redirect to logout page
                      },
                      child: const Text('Çıkış Yapın'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
