// ignore_for_file: unused_import, library_private_types_in_public_api, unused_field

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _email = '';
  String _password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merhaba'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'TC Kimlik Numaranız',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Geçersiz ya da yanlış form bilgisi girdiniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _username = value.trim();
                  });
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Telefon Numaranız',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
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
                  } else if (value.length < 8) {
                    return 'Şifreniz en az 8 karakter uzunluğunda olmalıdır.';
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
                child: const Text('Kayıt Ol'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle sign-up
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
