import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ListenerDemo extends StatefulWidget {
  const ListenerDemo({Key? key}) : super(key: key);

  @override
  State<ListenerDemo> createState() => _ListenerDemoState();
}

class _ListenerDemoState extends State<ListenerDemo> {
  Color _color = Colors.orange;
  String _firstContent = '';
  String _secondContent = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Listener(
          onPointerDown: (PointerDownEvent pointerDownEvent) {
            setState(() {
              _firstContent = 'PointerDownEvent';
            });
          },
          onPointerMove: (PointerMoveEvent pointerMoveEvent) {
            setState(() {
              _firstContent = 'PointerMoveEvent';
            });
          },
          onPointerUp: (PointerUpEvent upEvent) {
            setState(() {
              _firstContent = 'PointerUpEvent';
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(_firstContent),
          ),
        ),
        MouseRegion(
          onEnter: (event) {
            print("onEnter---$event");
            setState(() {
              _color = Colors.green;
              _secondContent = 'onEnter';
            });
          },
          onExit: (event) {
            print("onExit---$event");
            setState(() {
              _color = Colors.orange;
              _secondContent = 'onExit';
            });
          },
          onHover: (event) {
            // print("onHover---$event");
          },
          // cursor: MouseCursor.uncontrolled,
          cursor: SystemMouseCursors.click,
          opaque: false,
          child: Container(
            width: 100,
            height: 100,
            color: _color,
            child: Text(_secondContent),
          ),
        ),
      ],
    );
  }
}
