import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ImageFilteredDemo extends StatelessWidget {
  const ImageFilteredDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          //1
          ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 2.5,
              sigmaY: 2.5,
              tileMode: TileMode.clamp,
            ),
            child: _targetContent(),
          ),
          //2
          ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 5.5,
              sigmaY: 5.5,
              tileMode: TileMode.clamp,
            ),
            child: _targetContent(),
          ),

          //3
          ImageFiltered(
            imageFilter:
                ImageFilter.matrix(Matrix4.rotationZ(4 / 180 * pi).storage),
            child: _targetContent(),
          ),

          //4
          ImageFiltered(
            imageFilter:
                ImageFilter.matrix(Matrix4.rotationZ(20 / 180 * pi).storage),
            child: _targetContent(),
          ),
        ],
      ),
    );
  }

  _targetContent() {
    return Image.asset(
      'meinv2.png'.toImg,
      width: 300,
      height: 200,
    );
  }
}
