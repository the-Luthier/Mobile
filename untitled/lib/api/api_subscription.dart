import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/models/model_subscription.dart';

Future<List<Subscription>> fetchUserSubscriptions() async {
  final response = await http.get(
    Uri.parse('https://your-backend-url.com/user_subscriptions/'),
    headers: {'Authorization': 'Bearer your_jwt_token'},
  );

  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((json) => Subscription.fromJson(json)).toList();
  } else {
    throw Exception('Abonelikleriniz yüklenemedi.');
  }
}
