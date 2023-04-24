import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NetGalaksi'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 60),
          const Center(
            child: Text(
              "Arıza Bildirimi",
              style: TextStyle(
                color: Color(0xff6d256b),
                fontSize: 32,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 23.22),
          const Center(
            child: Text(
              "Sn. ",
              style: TextStyle(
                color: Color(0xff1d1b52),
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 23.22),
          const Divider(height: 1),
          const SizedBox(height: 23.22),
          Card(
            child: ListTile(
              title: const Text(
                "Yeni Arıza Kaydı",
                style: TextStyle(
                  color: Color(0xffc02465),
                  fontSize: 24,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // handle onTap
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                "Belge Arızaları",
                style: TextStyle(
                  color: Color(0xffc02465),
                  fontSize: 24,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // handle onTap
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                "Arıza Kayıtlarım",
                style: TextStyle(
                  color: Color(0xffc02465),
                  fontSize: 24,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // handle onTap
              },
            ),
          ),
        ],
      ),
    );
  }
}
