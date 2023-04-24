// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables, must_be_immutable, unused_import

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/models/model_subscription.dart';
import 'package:flutter/material.dart';
import 'package:untitled/api/api_subscription.dart';

class SubscriptionListPage extends StatefulWidget {
  var fullName;

  SubscriptionListPage({super.key});

  @override
  _SubscriptionListPageState createState() => _SubscriptionListPageState();
}

class _SubscriptionListPageState extends State<SubscriptionListPage> {
  late Future<List<Subscription>> futureSubscriptions;

  @override
  void initState() {
    super.initState();
    futureSubscriptions = fetchUserSubscriptions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aboneliklerim  ${widget.fullName}')),
      body: FutureBuilder<List<Subscription>>(
        future: futureSubscriptions,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].name),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // By default, show a loading spinner.
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
