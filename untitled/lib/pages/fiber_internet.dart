import 'package:flutter/material.dart';

class FiberInternetPage extends StatelessWidget {
  const FiberInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fiber İnternet'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(context, 'image1.png', () {
                  Navigator.pushNamed(context, '/page1');
                }),
                buildContainer(context, 'image2.png', () {
                  Navigator.pushNamed(context, '/page2');
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(context, 'image3.png', () {
                  Navigator.pushNamed(context, '/page3');
                }),
                buildContainer(context, 'image4.png', () {
                  Navigator.pushNamed(context, '/page4');
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(
      BuildContext context, String imageName, VoidCallback onTap) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$imageName'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
              ),
              child: const Text('Go to Page'),
            ),
          ),
        ),
      ],
    );
  }
}
