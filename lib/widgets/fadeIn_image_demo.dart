import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class FadeInImageDemo extends StatelessWidget {
  const FadeInImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      key: UniqueKey(),
      width: 200,
      height: 200,
      fadeOutDuration: const Duration(milliseconds: 2000),
      fadeInCurve: Curves.easeIn,
      placeholder: AssetImage(
        'meinv1.png'.toImg,
      ),
      image: AssetImage(
        'meinv2.png'.toImg,
      ),
    );
  }
}
