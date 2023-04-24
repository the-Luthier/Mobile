// ignore_for_file: unused_import, library_private_types_in_public_api, unused_field

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'TC Kimlik Numaranızı girin',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Geçersiz ya da yanlış form bilgisi girdiniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Şifreniz',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Geçersiz ya da yanlış form bilgisi girdiniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Giriş Yap'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle login
                    if (kDebugMode) {}
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
