import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class SizeTransitionDemo extends StatefulWidget {
  const SizeTransitionDemo({Key? key}) : super(key: key);

  @override
  State<SizeTransitionDemo> createState() => _SizeTransitionDemoState();
}

class _SizeTransitionDemoState extends State<SizeTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = Tween(begin: 0.1, end: 1.5).animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 200,
        child: SizeTransition(
          sizeFactor: _animation!,
          axis: Axis.horizontal,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
