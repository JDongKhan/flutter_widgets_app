import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: List.generate(10, (i) {
          double w = 50.0 + 10 * i;
          return Container(
            color: Colors.primaries[i],
            height: 50,
            width: w,
            child: Text('$i'),
          );
        }),
      ),
    );
  }
}
