class Subscription {
  final String name;

  Subscription({required this.name});

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(name: json['name']);
  }
}
