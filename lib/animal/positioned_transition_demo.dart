import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class PositionedTransitionDemo extends StatefulWidget {
  const PositionedTransitionDemo({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionDemo> createState() =>
      _PositionedTransitionDemoState();
}

class _PositionedTransitionDemoState extends State<PositionedTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<RelativeRect>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(10.0, 10.0, 10.0, 10.0),
            end: const RelativeRect.fromLTRB(100.0, 100.0, 100.0, 100.0))
        .animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.blue,
      child: Stack(
        children: <Widget>[
          PositionedTransition(
            rect: _animation!,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
