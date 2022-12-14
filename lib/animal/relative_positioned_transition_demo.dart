import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class RelativePositionedTransitionDemo extends StatefulWidget {
  const RelativePositionedTransitionDemo({Key? key}) : super(key: key);

  @override
  State<RelativePositionedTransitionDemo> createState() =>
      _RelativePositionedTransitionDemoState();
}

class _RelativePositionedTransitionDemoState
    extends State<RelativePositionedTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<Rect?>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    _animation = RectTween(
            begin: const Rect.fromLTRB(10.0, 10.0, 10.0, 10.0),
            end: const Rect.fromLTRB(300.0, 300.0, 0.0, 0.0))
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
          RelativePositionedTransition(
            rect: _animation!,
            size: const Size(0.0, 0.0),
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
