import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage('wechat.png'.toImg),
          color: Colors.blue,
          size: 20,
        ),
        ImageIcon(
          AssetImage('other.webp'.toImg),
          size: 20,
        ),
      ],
    );
  }
}
