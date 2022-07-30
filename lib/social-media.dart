import 'dart:js' as js;

import 'package:cv/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: width * 0.02,
        ),
        GestureDetector(
          onTap: () {
            js.context.callMethod(
                'open', ['https://www.instagram.com/khaldounbadreah/']);
          },
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/svg/social.svg",
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.008,
                  top: height * 0.02,
                ),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.02,
                  child: SvgPicture.asset("assets/svg/instagram.svg"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        GestureDetector(
          onTap: () {
            js.context
                .callMethod('open', ['https://github.com/Khaldoun-Badreah']);
          },
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/svg/social.svg",
                color: lightGreen,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.008,
                  top: height * 0.02,
                ),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.02,
                  child: SvgPicture.asset("assets/svg/github.svg"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        GestureDetector(
          onTap: () {
            js.context
                .callMethod('open', ['https://gitlab.com/khaldounbadreahf']);
          },
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/svg/social.svg",
                color: lightGreen,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.008,
                  top: height * 0.02,
                ),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.02,
                  child: SvgPicture.asset("assets/svg/gitlab.svg"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        GestureDetector(
          onTap: () {
            js.context.callMethod('open',
                ['https://www.linkedin.com/in/khaldoun-badreah-809705245']);
          },
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/svg/social.svg",
                color: lightGreen,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.008,
                  top: height * 0.02,
                ),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.02,
                  child: SvgPicture.asset("assets/svg/linkedin.svg"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
