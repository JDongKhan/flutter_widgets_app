import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedIconDemo extends StatefulWidget {
  const AnimatedIconDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedIconDemo> createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              animationController.forward();
            }
          });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      child: AnimatedIcon(
        icon: AnimatedIcons.view_list,
        progress: animationController,
      ),
    );
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }
}
