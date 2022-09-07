import 'dart:math';

import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation? animation;
  @override
  void initState() {
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              animationController?.reverse();
            } else if (status == AnimationStatus.dismissed) {
              animationController?.forward();
            }
          });
    animation = Tween(begin: 0.0, end: 2.0 * pi).animate(animationController!);
    //开始动画
    animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation!,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: animation?.value,
          child: child,
        );
      },
      child: const FlutterLogo(
        size: 60,
      ),
    );
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
}
