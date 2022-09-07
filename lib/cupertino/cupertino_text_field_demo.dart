import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoTextFieldDemo extends StatefulWidget {
  const CupertinoTextFieldDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoTextFieldDemo> createState() => _CupertinoTextFieldDemoState();
}

class _CupertinoTextFieldDemoState extends State<CupertinoTextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoTextField();
  }
}
