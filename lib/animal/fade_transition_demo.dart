import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FadeTransitionDemo extends StatefulWidget {
  const FadeTransitionDemo({Key? key}) : super(key: key);

  @override
  State<FadeTransitionDemo> createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();
    animation = Tween(begin: 0.0, end: 1.0).animate(controller!);
    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: animation!,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }
}
