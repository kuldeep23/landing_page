import 'package:flutter/material.dart';
import 'package:landing_page/intro_screens/intro_page1.dart';
import 'package:landing_page/intro_screens/intro_page2.dart';
import 'package:landing_page/intro_screens/intro_page3.dart';
import 'package:landing_page/intro_screens/intro_page6.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';
import 'intro_screens/intro_page4.dart';
import 'intro_screens/intro_page5.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
              IntroPage5(),
              IntroPage6()
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(5);
                      },
                      child: Text('skip')),

                  //dot indicator
                  SmoothPageIndicator(controller: _controller, count: 6),

                  // next or done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                          child: Text('done'))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 1500),
                                curve: Curves.easeIn);
                          },
                          child: Text('next'))
                ],
              )),
        ],
      ),
    );
  }
}
