import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ClipOvalDemo extends StatelessWidget {
  const ClipOvalDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Container(
          height: 150,
          width: 250,
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
