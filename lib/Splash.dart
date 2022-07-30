import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cv/constant.dart';
import 'package:cv/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        _a = true;
      });
    });
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        _b = true;
      });
    });
    Timer(Duration(milliseconds: 1300), () {
      setState(() {
        _c = true;
      });
    });
    Timer(Duration(milliseconds: 1700), () {
      setState(() {
        _e = true;
      });
    });
    Timer(Duration(milliseconds: 3400), () {
      setState(() {
        _d = true;
      });
    });
    Timer(Duration(milliseconds: 3850), () {
      setState(() {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => KhaldounBadreah(),
          ),
        );
      });
    });
  }

  bool _a = false;
  bool _b = false;
  bool _c = false;
  bool _d = false;
  bool _e = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: _d ? 900 : 2500),
              curve: _d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
              height: _d
                  ? 0
                  : _a
                      ? height / 2
                      : 20,
            ),
            AnimatedContainer(
              duration: Duration(
                seconds: _d
                    ? 1
                    : _c
                        ? 2
                        : 0,
              ),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _d
                  ? height
                  : _c
                      ? 80
                      : 20,
              width: _d
                  ? width
                  : _c
                      ? 200
                      : 20,
              decoration: BoxDecoration(
                color: _b ? Colors.white : Colors.transparent,
                borderRadius:
                    _d ? BorderRadius.only() : BorderRadius.circular(30),
              ),
              child: Center(
                child: _e
                    ? AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          FadeAnimatedText(
                            "Khaldoun Badreah",
                            duration: Duration(milliseconds: 1700),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: title,
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
