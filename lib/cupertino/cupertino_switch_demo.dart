import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  var _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue,
      onChanged: (value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}
