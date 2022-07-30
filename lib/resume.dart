import 'package:animated_background/animated_background.dart';
import 'package:cv/constant.dart';
import 'package:cv/line.dart';
import 'package:cv/tabs.dart';
import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> with TickerProviderStateMixin {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Khaldoun Badreah",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: title,
                            fontSize: 28),
                      ),
                      Text(
                        "Senior Adviser Flutter Developer",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: subTitle,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Tabss(),
                  Column(
                    children: const [
                      Text(
                        "Address: Damascus\nPhone: +963967119626\nDate of birth: Dec. 1, 2000\nNationality: Syrian",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: title,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MySeparator(),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EXPERIENCE",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: title,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Damascus\nJun 2022 - Present",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: subTitle,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: title,
                                fontSize: 30),
                          ),
                          Text(
                            "Rateb Safe CO.\n\nMobile Application Developer",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: subTitle,
                            ),
                          ),
                        ],
                      ),
                      Container(),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Damascus\nJun 2022 - Present",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: subTitle,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: title,
                                fontSize: 30),
                          ),
                          Text(
                            "Syrian Professional Network\n\nMobile Application Developer",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: subTitle,
                            ),
                          ),
                        ],
                      ),
                      Container(),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MySeparator(),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EDUCATION",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: title,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "On-Line\nSep 2020 - Present\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: subTitle,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Information Technology",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: title,
                                fontSize: 30),
                          ),
                          Text(
                            "Syrian Virtual University",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: subTitle,
                            ),
                          ),
                        ],
                      ),
                      Container(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MySeparator(),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Skills",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: title,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "* Flutter\n\n* ASP.NET\n\n* PHP\n\n* C#\n\n* Adobe XD",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: subTitle,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: title,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "English\nIntermediate. Course",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: subTitle,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
