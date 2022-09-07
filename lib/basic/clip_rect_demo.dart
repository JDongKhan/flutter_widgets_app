import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ClipRectDemo extends StatelessWidget {
  const ClipRectDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        child: Align(
          alignment: Alignment.topCenter,
          heightFactor: 0.5,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
            child: Image.asset(
              'meinv2.png'.toImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
