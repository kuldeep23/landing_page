import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_kzvh3s9g.json')),
        ],
      ),
    );
  }
}
