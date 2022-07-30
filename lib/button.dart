import 'package:cv/constant.dart';
import 'package:flutter/material.dart';

class LitsTalk extends StatefulWidget {
  const LitsTalk({Key? key}) : super(key: key);

  @override
  State<LitsTalk> createState() => _LitsTalkState();
}

class _LitsTalkState extends State<LitsTalk> with TickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (context, child) {
        return Container(
          decoration: ShapeDecoration(
            // color: Colors.white.withOpacity(0.5),
            shape: CircleBorder(),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0 * animationController!.value),
            child: child,
          ),
        );
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: CircleBorder(),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(lightGreen),
          ),
          onPressed: () {},
          child: Text(
            "Let's Talk",
            style: TextStyle(
              color: Colors.white,
              fontFamily: subTitle,
            ),
          ),
        ),
      ),
    );
  }
}
