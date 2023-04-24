// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _phoneNumberController = TextEditingController();

  Future<void> _sendResetCode() async {
    final response = await http.post(
      Uri.parse('https://example.com/api/reset-password/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'phone_number': _phoneNumberController.text}),
    );
    if (response.statusCode == 200) {
      Navigator.pushNamed(context, '/reset_password');
    } else {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Static image container at the top
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/forgot_password_banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // User input text field for phone number
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            // Send button with post and redirect functionalities
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: _sendResetCode,
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
