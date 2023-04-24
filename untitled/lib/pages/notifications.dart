// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final String fullName = "John Doe"; //Replace with your user's full name
  String chosenNotificationType =
      "Unread"; //Default value for the chosen notification type
  List<String> notifications = [
    "Notification 1",
    "Notification 2",
    "Notification 3",
    "Notification 4",
    "Notification 5",
    "Notification 6",
    "Notification 7",
    "Notification 8",
    "Notification 9",
    "Notification 10"
  ]; //Replace with your actual notifications data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              fullName,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    chosenNotificationType = "Unread";
                  });
                },
                child: const Text("Unread"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    chosenNotificationType = "Read";
                  });
                },
                child: const Text("Read"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    chosenNotificationType = "All";
                  });
                },
                child: const Text("All"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    notifications = [];
                  });
                },
                child: const Text("Erase All"),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (BuildContext context, int index) {
                if (chosenNotificationType == "Unread" && index % 2 == 0) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      notifications[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                } else if (chosenNotificationType == "Read" && index % 2 != 0) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      notifications[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                } else if (chosenNotificationType == "All") {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      notifications[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
