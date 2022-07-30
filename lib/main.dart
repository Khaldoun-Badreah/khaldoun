// ignore_for_file: unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_background/animated_background.dart';
import 'package:cv/Splash.dart';
import 'package:cv/button.dart';
import 'package:cv/constant.dart';
import 'package:cv/social-media.dart';
import 'package:cv/tabs.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const CV());
}

class CV extends StatelessWidget {
  const CV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Khaldoun Badreah",
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class KhaldounBadreah extends StatefulWidget {
  const KhaldounBadreah({Key? key}) : super(key: key);

  @override
  State<KhaldounBadreah> createState() => _KhaldounBadreahState();
}

class _KhaldounBadreahState extends State<KhaldounBadreah>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: gray,
      body: Stack(
        children: [
          AnimatedBackground(
            behaviour: SpaceBehaviour(),
            vsync: this,
            child: Container(),
          ),
          ListView(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.04,
              horizontal: width * 0.02,
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Khaldoun Badreah",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: title,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Container()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.1,
                            ),
                            child: Text(
                              "Hello, ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: subTitle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.1,
                            ),
                            child: Text(
                              "I'm",
                              style: TextStyle(
                                color: lightGreen,
                                fontFamily: subTitle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.05,
                        ),
                        child: Text(
                          "Khaldoun Badreah",
                          style: TextStyle(
                            color: lightGreen,
                            fontFamily: title,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.05,
                        ),
                        child: Text(
                          "Senior Adviser Flutter Developer",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: subTitle,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.1,
                        ),
                        child: Text(
                          "Don't say no to your Design",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: subTitle,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.1,
                          ),
                          child: LitsTalk()),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.1,
                            ),
                            child: Text(
                              "Check Out My",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: subTitle,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.1,
                            ),
                            child: SocialMedia(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [Tabs()],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
