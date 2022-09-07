import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ClipRRectDemo extends StatelessWidget {
  const ClipRRectDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
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
    );
  }
}
