import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AlignDemo extends StatefulWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  State<AlignDemo> createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      width: 200,
      height: 200,
      child: const Align(
        alignment: Alignment.bottomRight,
        child: Text(
          '这是一款不错的app',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
