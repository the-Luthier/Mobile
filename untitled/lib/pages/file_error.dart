// ignore_for_file: library_private_types_in_public_api, unused_field

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FileError {
  final String title;
  final String description;

  FileError({required this.title, required this.description});

  factory FileError.fromJson(Map<String, dynamic> json) {
    return FileError(
      title: json['title'],
      description: json['description'],
    );
  }
}

class FileErrorPage extends StatefulWidget {
  final String fullName;

  const FileErrorPage({Key? key, required this.fullName}) : super(key: key);

  @override
  _FileErrorPageState createState() => _FileErrorPageState();

  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class _FileErrorPageState extends State<FileErrorPage> {
  List<FileError> _fileErrors = [];

  get fullName => true;

  @override
  void initState() {
    super.initState();
    _fetchFileErrors();
  }

  Future<void> _fetchFileErrors() async {
    final response = await http
        .get('http://your-django-backend-url.com/api/file_errors/' as Uri);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      List<FileError> fileErrors =
          jsonResponse.map((e) => FileError.fromJson(e)).toList();

      setState(() {
        _fileErrors = fileErrors;
      });
    } else {
      throw Exception('Belge Arızaları yüklenemedi.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belge Arızaları'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 55, bottom: 78),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Belge Arızaları",
                    style: TextStyle(
                      color: Color(0xff6d256b),
                      fontSize: 32,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8.87),
                  SizedBox(
                    width: 39,
                    height: 34.67,
                    child: Container(
                      width: 39,
                      height: 34.67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                            color: const Color(0x7f000000), width: 1),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.only(left: 11, right: 12),
                      child: const FlutterLogo(size: 12.651291847229004),
                    ),
                  ),
                  const SizedBox(height: 8.87),
                  Container(
                    width: 231,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.20),
                    ),
                  ),
                  const SizedBox(height: 8.87),
                  Text(
                    "Sn. $fullName",
                    style: const TextStyle(
                      color: Color(0xff1d1b52),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8.87),
                  const SizedBox(
                    width: 390.01,
                    height: 1,
                  ),
                  const SizedBox(height: 8.87),
                  Container(
                    width: 339,
                    height: 649,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0x7f000000), width: 1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 339,
                          height: 649,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white,
                          ),
                        ),
                        // Add content or widgets here for the content area
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
