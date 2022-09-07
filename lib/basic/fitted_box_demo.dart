import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FittedBoxDemo extends StatelessWidget {
  const FittedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //当子组件的宽高比和父组件的宽高比不一样时，我们等比拉伸或者填充父组件，这时我们可以使用
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.green,
        child: FittedBox(
          child: Container(
            height: 50,
            width: 80,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
