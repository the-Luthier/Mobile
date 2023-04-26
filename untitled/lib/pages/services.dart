// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SevenButtonsPage extends StatelessWidget {
  final String fullName;
  const SevenButtonsPage({super.key, required this.fullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hizmetlerimiz'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: Text(
              fullName,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              childAspectRatio: 1.5,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/development');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('Altyapı Sorgulama'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/packages');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('Kampanyalarımız'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/development');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('Superbox'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fiber_internet');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('Fiber İnternet'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/support');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('İnternet Servisi'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/modem');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('Modem'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.75, // Adjust this value to control the width (0.9 means 90% of the screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact_us');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .pink, // Change this to set the background color
                      foregroundColor:
                          Colors.white, // Change this to set the text color
                    ),
                    child: const Text('7/24 Çağrı Merkezi'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
