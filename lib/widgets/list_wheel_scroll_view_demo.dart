import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ListWheelScrollViewDemo extends StatelessWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 150,
      perspective: 0.003,
      // useMagnifier: true,
      // magnification: 1.5,
      // squeeze: 1,
      // offAxisFraction: 13,
      childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              color: Colors.primaries[index % 10],
              alignment: Alignment.center,
              child: Text('$index'),
            );
          },
          childCount: 100),
    );
  }
}
