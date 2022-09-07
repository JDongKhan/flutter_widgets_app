import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedSizeDemo extends StatefulWidget {
  const AnimatedSizeDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeDemo> createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo>
    with SingleTickerProviderStateMixin {
  var _height = 100.0;
  var _width = 100.0;
  var _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            child: const Text('放大'),
            onPressed: () {
              setState(() {
                _height = 200.0;
                _width = 200.0;
                _color = Colors.blue;
              });
            },
          ),
          TextButton(
            child: const Text('缩小'),
            onPressed: () {
              setState(() {
                _height = 100.0;
                _width = 100.0;
                _color = Colors.red;
              });
            },
          ),
          AnimatedSize(
            duration: const Duration(seconds: 1),
            child: Container(
              height: _height,
              width: _width,
              color: _color,
            ),
          ),
        ],
      ),
    );
  }
}
