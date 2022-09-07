import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            Container(
              color: Colors.redAccent,
              child: const Text('1'),
            ),
            Container(
              color: Colors.greenAccent,
              child: const Text('2'),
            ),
            Container(color: Colors.blueAccent, child: const Text('3')),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(118.0),
          child: Container(
            color: Colors.black12,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  color: Colors.redAccent,
                  child: const Text('1'),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: const Text('2'),
                ),
                Container(color: Colors.blueAccent, child: const Text('3')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
