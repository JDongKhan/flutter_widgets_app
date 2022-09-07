import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ExpandIconDemo extends StatefulWidget {
  const ExpandIconDemo({Key? key}) : super(key: key);

  @override
  State<ExpandIconDemo> createState() => _ExpandIconDemoState();
}

class _ExpandIconDemoState extends State<ExpandIconDemo> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return ExpandIcon(
      disabledColor: Colors.green,
      expandedColor: Colors.blue,
      color: Colors.red,
      onPressed: (value) {
        setState(() {
          _expanded = !_expanded;
        });
      },
      isExpanded: _expanded,
    );
  }
}
