import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_jmejybvu.json')),
      ),
    );
  }
}
