// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpecialPage extends StatelessWidget {
  final String fullName;

  const SpecialPage({super.key, required this.fullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bana Özel'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              fullName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/special_large.png',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/special1.png',
                    height: 50,
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      // Redirect functionality for small image 1
                    },
                    child: const Text('Abone Ol'),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/special2.png',
                    height: 50,
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      // Redirect functionality for small image 2
                    },
                    child: const Text('Abone Ol'),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/special3.png',
                    height: 50,
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      // Redirect functionality for small image 3
                    },
                    child: const Text('Abone Ol'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
