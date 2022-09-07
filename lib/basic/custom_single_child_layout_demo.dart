import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CustomSingleChildLayoutDemo extends StatelessWidget {
  const CustomSingleChildLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: CustomSingleChildLayout(
          delegate: MySingleChildLayoutDelegate(const Offset(10, 10)),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  MySingleChildLayoutDelegate(this.position);

  final Offset position;

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(position.dx, position.dy);
  }

  @override
  bool shouldRelayout(MySingleChildLayoutDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
