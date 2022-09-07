import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class GlowingOverscrollIndicatorDemo extends StatelessWidget {
  const GlowingOverscrollIndicatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyScrollBehavior(),
      child: ListView.builder(
        shrinkWrap: true,
        controller: ScrollController(),
        itemBuilder: (BuildContext context, int index) {
          return Text('Item$index');
        },
        itemExtent: 50,
        itemCount: 50,
      ),
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return GlowingOverscrollIndicator(
      axisDirection: axisDirection,
      color: Colors.blue,
      child: child,
    );
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics();
  }
}
