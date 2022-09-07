import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AlignTransitionDemo extends StatefulWidget {
  const AlignTransitionDemo({Key? key}) : super(key: key);

  @override
  State<AlignTransitionDemo> createState() => _AlignTransitionDemoState();
}

class _AlignTransitionDemoState extends State<AlignTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<AlignmentGeometry>? _animation;
  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<AlignmentGeometry>(
            begin: Alignment.topLeft, end: Alignment.bottomRight)
        .animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blue,
      child: AlignTransition(
        alignment: _animation!,
        child: Container(
          height: 30,
          width: 30,
          color: Colors.red,
        ),
      ),
    );
  }
}
