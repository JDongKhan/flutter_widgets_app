import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///@Description TODO
///@Author jd
class FocusManagerDemo extends StatefulWidget {
  const FocusManagerDemo({Key? key}) : super(key: key);

  @override
  State<FocusManagerDemo> createState() => _FocusManagerDemoState();
}

class _FocusManagerDemoState extends State<FocusManagerDemo> {
  late FocusNode _node;
  bool _focused = false;
  late FocusAttachment _nodeAttachment;
  Color _color = Colors.white;

  @override
  void initState() {
    super.initState();
    _node = FocusNode(debugLabel: 'Button');
    _node.addListener(_handleFocusChange);
    _nodeAttachment = _node.attach(context, onKey: _handleKeyPress);
  }

  void _handleFocusChange() {
    if (_node.hasFocus != _focused) {
      setState(() {
        _focused = _node.hasFocus;
      });
    }
  }

  KeyEventResult _handleKeyPress(FocusNode node, RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      debugPrint(
          'Focus node ${node.debugLabel} got key event: ${event.logicalKey}');
      if (event.logicalKey == LogicalKeyboardKey.keyR) {
        debugPrint('Changing color to red.');
        setState(() {
          _color = Colors.red;
        });
        return KeyEventResult.handled;
      } else if (event.logicalKey == LogicalKeyboardKey.keyG) {
        debugPrint('Changing color to green.');
        setState(() {
          _color = Colors.green;
        });
        return KeyEventResult.handled;
      } else if (event.logicalKey == LogicalKeyboardKey.keyB) {
        debugPrint('Changing color to blue.');
        setState(() {
          _color = Colors.blue;
        });
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  void dispose() {
    _node.removeListener(_handleFocusChange);
    // The attachment will automatically be detached in dispose().
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _nodeAttachment.reparent();
    return GestureDetector(
      onTap: () {
        if (_focused) {
          _node.unfocus();
        } else {
          _node.requestFocus();
        }
      },
      child: Center(
        child: Container(
          width: 400,
          height: 100,
          color: _focused ? _color : Colors.white,
          alignment: Alignment.center,
          child:
              Text(_focused ? "I'm in color! Press R,G,B!" : 'Press to focus'),
        ),
      ),
    );
  }
}
