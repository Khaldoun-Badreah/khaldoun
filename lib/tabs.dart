import 'package:cv/Projects.dart';
import 'package:cv/constant.dart';
import 'package:cv/main.dart';
import 'package:cv/resume.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.1),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => KhaldounBadreah(),
                ),
              );
            },
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: subTitle,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Projects(),
                ),
              );
            },
            child: Text(
              "Projects",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: subTitle,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Resume(),
                ),
              );
            },
            child: Text(
              "Resume",
              style: TextStyle(
                color: Colors.white,
                fontFamily: subTitle,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tabss extends StatelessWidget {
  const Tabss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.1),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => KhaldounBadreah(),
                ),
              );
            },
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontFamily: subTitle,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Projects(),
                ),
              );
            },
            child: Text(
              "Projects",
              style: TextStyle(
                color: Colors.white,
                fontFamily: subTitle,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Resume(),
                ),
              );
            },
            child: Text(
              "Resume",
              style: TextStyle(
                color: Colors.white,
                fontFamily: subTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
