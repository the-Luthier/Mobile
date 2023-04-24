// ignore_for_file: library_private_types_in_public_api, prefer_interpolation_to_compose_strings

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  String dropdownValue = 'Başlık Seçiniz';
  final messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  Future<void> sendEmail(String fullName, String title, String message) async {
    String username = 'your-email@example.com';
    String password = 'your-email-password';

    final smtpServer = gmail(username, password);

    final emailMessage = Message()
      ..from = Address(username, 'Your Name')
      ..recipients.add('recipient-email@example.com')
      ..subject = '$title from $fullName'
      ..text = message;

    try {
      final sendReport = await send(emailMessage, smtpServer);
      if (kDebugMode) {
        print('Message sent: ' + sendReport.toString());
      }
    } catch (e) {
      if (kDebugMode) {
        print('Message not sent: ' + e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arıza Bildirimi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: const Text(
              'Hello, John Doe',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>[
                'Modem',
                'İnternete bağlanamıyorum - İnternet ışığı yanmıyor',
                'Hızım Düşük - Performans',
                'Sık sık kopma yaşıyorum',
                'Bazı sayfalara erişemiyorum',
                'Belge hatası bildir',
                'Diğer'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: messageController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Mesajınızı buraya yazın...',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                sendEmail(
                  'John Doe', // Replace with the user's full name
                  dropdownValue,
                  messageController.text,
                );
              },
              child: const Text('Send'),
            ),
          ),
        ],
      ),
    );
  }
}
