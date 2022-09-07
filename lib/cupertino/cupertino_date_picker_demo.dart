import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoDatePickerDemo extends StatefulWidget {
  const CupertinoDatePickerDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoDatePickerDemo> createState() =>
      _CupertinoDatePickerDemoState();
}

class _CupertinoDatePickerDemoState extends State<CupertinoDatePickerDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      onDateTimeChanged: (DateTime value) {},
    );
  }
}
