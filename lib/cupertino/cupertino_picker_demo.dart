import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CupertinoPickerDemo extends StatefulWidget {
  const CupertinoPickerDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerDemo> createState() => _CupertinoPickerDemoState();
}

class _CupertinoPickerDemoState extends State<CupertinoPickerDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      itemExtent: 45,
      onSelectedItemChanged: (index) {},
      children: <Widget>[
        Container(
          color: Colors.primaries[1],
        ),
        Container(
          color: Colors.primaries[2],
        ),
        Container(
          color: Colors.primaries[3],
        ),
        Container(
          color: Colors.primaries[4],
        ),
        Container(
          color: Colors.primaries[5],
        ),
        Container(
          color: Colors.primaries[6],
        ),
      ],
    );
  }
}
