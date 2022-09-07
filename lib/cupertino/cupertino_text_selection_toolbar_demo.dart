import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoTextSelectionToolbarDemo extends StatefulWidget {
  const CupertinoTextSelectionToolbarDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoTextSelectionToolbarDemo> createState() =>
      _CupertinoTextSelectionToolbarDemoState();
}

class _CupertinoTextSelectionToolbarDemoState
    extends State<CupertinoTextSelectionToolbarDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTextSelectionToolbar(
      anchorBelow: const Offset(100, 100),
      anchorAbove: const Offset(100, 100),
      children: const [
        Text('iOS'),
      ],
    );
  }
}
