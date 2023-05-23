import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent[100],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_5e7wgehs.json')),
      ),
    );
  }
}
