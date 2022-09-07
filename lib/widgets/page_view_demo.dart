import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: PageView(
        controller: PageController(),
        children: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text('第1页'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text('第2页'),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('第3页'),
          ),
        ],
      ),
    );
  }
}
