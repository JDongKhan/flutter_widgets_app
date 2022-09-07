import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ScaleTransitionDemo extends StatefulWidget {
  const ScaleTransitionDemo({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionDemo> createState() => _ScaleTransitionDemoState();
}

class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = Tween(begin: .5, end: .1).animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation!,
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
