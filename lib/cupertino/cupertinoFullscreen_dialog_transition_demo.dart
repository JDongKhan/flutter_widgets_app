import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CupertinoFullscreenDialogTransitionDemo extends StatefulWidget {
  const CupertinoFullscreenDialogTransitionDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoFullscreenDialogTransitionDemo> createState() =>
      _CupertinoFullscreenDialogTransitionDemoState();
}

class _CupertinoFullscreenDialogTransitionDemoState
    extends State<CupertinoFullscreenDialogTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextButton(
              onPressed: () => _animationController?.forward(),
              child: const Text('Forward'),
            ),
            TextButton(
              onPressed: () => _animationController?.reverse(),
              child: const Text('Reverse'),
            ),
          ],
        ),
        CupertinoFullscreenDialogTransition(
          linearTransition: true,
          secondaryRouteAnimation: _animationController!,
          primaryRouteAnimation: _animationController!,
          child: Container(
            color: Colors.blueGrey,
            height: 300,
          ),
        ),
      ],
    );
  }
}
