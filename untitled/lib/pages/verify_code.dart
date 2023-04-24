// ignore_for_file: unused_import, library_private_types_in_public_api

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SmsVerificationPage extends StatefulWidget {
  const SmsVerificationPage({Key? key}) : super(key: key);

  @override
  _SmsVerificationPageState createState() => _SmsVerificationPageState();
}

class _SmsVerificationPageState extends State<SmsVerificationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMS Verification'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'Lütfen telefon numaranıza gelen aktivasyon kdounu girin.'),
              const SizedBox(height: 20),
              TextFormField(
                controller: _codeController,
                decoration: const InputDecoration(
                  hintText: 'Aktivasyon Kodunuz',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen telefon numaranıza gelen aktivasyon kdounu girin.';
                  } else if (value.length != 6) {
                    return 'Doğrulama Kodunuz 6 haneli olmalıdır.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Giriş'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Verify the SMS code here
                    String code = _codeController.text;
                    final response = await http.post(
                      Uri.parse(
                          'https://your-django-app-domain.com/api/sms_verification/'),
                      headers: {
                        'Content-Type': 'application/json',
                      },
                      body: jsonEncode({'code': code}),
                    );

                    if (response.statusCode == 200) {
                      // The SMS code is valid
                      // Navigate to the next page or show a success message
                    } else {
                      // The SMS code is invalid
                      // Show an error message or handle the error accordingly
                    }
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
