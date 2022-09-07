import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///https://blog.csdn.net/zl18603543572/article/details/111829472
///@Author jd
class InteractiveViewerDemo extends StatelessWidget {
  const InteractiveViewerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      alignPanAxis: false,
      minScale: 0.1,
      boundaryMargin: const EdgeInsets.all(140),
      child: Image.asset(
        'meinv2.png'.toImg,
      ),
    );
  }
}
