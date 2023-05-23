import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.pink[100],
            child: Center(
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_kzvh3s9g.json'),
            ),
          ),
          SizedBox(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Text Messages',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                )),
          ),
        ],
      ),
    );
  }
}
