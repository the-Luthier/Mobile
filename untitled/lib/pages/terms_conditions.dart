import 'package:flutter/material.dart';

class MyPopup extends StatelessWidget {
  final String popupText;

  const MyPopup({super.key, required this.popupText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo container
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          // Text content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              popupText,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          // Close button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Anladım'),
          ),
        ],
      ),
    );
  }
}
