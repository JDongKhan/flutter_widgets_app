import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///@Description TODO
///@Author jd
class KeyboardListenerDemo extends StatefulWidget {
  const KeyboardListenerDemo({Key? key}) : super(key: key);

  @override
  State<KeyboardListenerDemo> createState() => _KeyboardListenerDemoState();
}

class _KeyboardListenerDemoState extends State<KeyboardListenerDemo> {
  String? _keyString;
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      autofocus: true,
      onKeyEvent: (event) {
        // print(event);
        if (event.runtimeType == KeyDownEvent) {
          _keyString = event.character;
          if (event.physicalKey == PhysicalKeyboardKey.enter) {
            _keyString = 'enter';
          }
          focusNode.requestFocus();
          setState(() {});
        }
      },
      focusNode: focusNode,
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        child: Text(_keyString ?? ''),
      ),
    );
  }
}
