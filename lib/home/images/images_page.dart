import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.asset(
                'assets/images/Paisagem_no_inhotim.jpg',
                fit: BoxFit.cover,
                // fit: BoxFit.contain,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              // color: Colors.red,
              child: Image.network(
                'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                fit: BoxFit.cover,
                // fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
