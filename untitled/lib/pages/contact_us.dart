// ignore_for_file: unused_import, deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactUsPage> {
  final TextEditingController _messageController = TextEditingController();

  Future<void> _sendEmail() async {
    final Email email = Email(
      body: _messageController.text,
      subject: 'User Contact Request',
      recipients: ['mobiluygulamanetgalaksi@netgalaksi.com.tr'],
      isHTML: false,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
        duration: const Duration(seconds: 3),
      ),
    );

    _messageController.clear();
  }

  void launchUrl() async {
    const phoneNumber =
        'tel:+1234567890'; // Replace with the phone number you want to call
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Arama başarısız')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bize Ulaşın'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: Image.asset('assets/images/contact_us.png'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () => launchUrl(),
              icon: const Icon(Icons.call),
              label: const Text('Bizi Arayın'),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _messageController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Mesajınızı iletin.',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _sendEmail,
              child: const Text('Gönder'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, '/contact_us_check'),
              child: const Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
