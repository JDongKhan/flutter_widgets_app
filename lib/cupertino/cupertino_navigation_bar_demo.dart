import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CupertinoNavigationBarDemo extends StatefulWidget {
  const CupertinoNavigationBarDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoNavigationBarDemo> createState() =>
      _CupertinoNavigationBarDemoState();
}

class _CupertinoNavigationBarDemoState
    extends State<CupertinoNavigationBarDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Icon(Icons.arrow_back),
        middle: Text('title'),
      ),
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
