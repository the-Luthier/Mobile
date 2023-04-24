// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PackagesPage extends StatelessWidget {
  const PackagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page Title'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/packages1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // redirect functionality
                          },
                          child: const Text('Button 1'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/packages2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // redirect functionality
                          },
                          child: const Text('Button 2'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/packages3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // redirect functionality
                          },
                          child: const Text('Button 3'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/packages4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // redirect functionality
                          },
                          child: const Text('Button 4'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
