// ignore_for_file: unused_import, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NetGalaksi'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/page_wide_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'NetGalaksi\'ye Hoşgeldiniz',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Biraz daha küçük metin buraya gelecek.',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child:
                      Image.asset('assets/thin_image_1.jpg', fit: BoxFit.cover),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child:
                      Image.asset('assets/thin_image_2.jpg', fit: BoxFit.cover),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child:
                      Image.asset('assets/thin_image_3.jpg', fit: BoxFit.cover),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child:
                      Image.asset('assets/thin_image_4.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
