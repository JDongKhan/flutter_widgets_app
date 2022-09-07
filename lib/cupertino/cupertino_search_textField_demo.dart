import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoSearchTextFieldDemo extends StatefulWidget {
  const CupertinoSearchTextFieldDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoSearchTextFieldDemo> createState() =>
      _CupertinoSearchTextFieldDemoState();
}

class _CupertinoSearchTextFieldDemoState
    extends State<CupertinoSearchTextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoSearchTextField();
  }
}
