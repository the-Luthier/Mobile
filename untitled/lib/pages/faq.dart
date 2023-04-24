// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sıkça Sorulan Sorular"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Text("Back"),
              ],
            ),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 1", content: "Content 1"),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 2", content: "Content 2"),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 3", content: "Content 3"),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 4", content: "Content 4"),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 5", content: "Content 5"),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 6", content: "Content 6"),
            const SizedBox(height: 16.0),
            const AccordionWidget(title: "Accordion 7", content: "Content 7"),
          ],
        ),
      ),
    );
  }
}

class AccordionWidget extends StatefulWidget {
  final String title;
  final String content;

  const AccordionWidget(
      {super.key, required this.title, required this.content});

  @override
  // ignore: library_private_types_in_public_api
  _AccordionWidgetState createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              Icon(
                _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30.0,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        _isExpanded
            ? Text(
                widget.content,
                style: const TextStyle(fontSize: 16.0),
              )
            : Container(),
      ],
    );
  }
}
