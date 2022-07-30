import 'dart:js' as js;

import 'package:animated_background/animated_background.dart';
import 'package:cv/constant.dart';
import 'package:cv/line.dart';
import 'package:cv/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                  const Text(
                    "Khaldoun Badreah",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: title,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Tabss(),
                  Container()
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MySeparator(),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "My Projects",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: title,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.8,
                child: AnimationLimiter(
                    child: GridView.count(
                  crossAxisCount: 3,
                  physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  children: List.generate(projects.length, (index) {
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: Duration(milliseconds: 500),
                      columnCount: 3,
                      child: ScaleAnimation(
                        duration: Duration(milliseconds: 900),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: FadeInAnimation(
                          child: Container(
                            margin: EdgeInsets.only(
                              bottom: width / 30,
                              left: width / 60,
                              right: width / 60,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 40,
                                    spreadRadius: 10,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.01,
                                vertical: height * 0.01,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "${projects[index]}",
                                    style: TextStyle(
                                        fontFamily: title,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Image.asset("assets/image/${index + 1}.png"),
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(darkBlue),
                                      ),
                                      onPressed: () {
                                        if (index == 0) {
                                          js.context.callMethod('open', [
                                            'https://drive.google.com/file/d/15AhhaBzJon1Nzuk2WQPpKHPU18xls9Bx/view?usp=sharing'
                                          ]);
                                        }
                                      },
                                      child: Text(
                                        "Download",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: subTitle,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
