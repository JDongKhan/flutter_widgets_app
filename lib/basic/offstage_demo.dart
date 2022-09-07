import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class OffstageDemo extends StatefulWidget {
  const OffstageDemo({Key? key}) : super(key: key);

  @override
  State<OffstageDemo> createState() => _OffstageDemoState();
}

class _OffstageDemoState extends State<OffstageDemo> {
  bool _isOff = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Offstage(
          offstage: _isOff,
          child: const Text("Offstage组件"),
        ),
        TextButton(
          child: Text(_isOff ? '显示' : '隐藏'),
          onPressed: () {
            setState(() {
              _isOff = !_isOff;
            });
          },
        )
      ],
    );
  }
}
