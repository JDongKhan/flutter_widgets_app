import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd

class BackdropFilterDemo extends StatelessWidget {
  const BackdropFilterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 300,
          height: 400,
          child: Image.asset('meinv2.png'.toImg),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.red.withOpacity(0),
            child: const Text(
              'hello world',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
