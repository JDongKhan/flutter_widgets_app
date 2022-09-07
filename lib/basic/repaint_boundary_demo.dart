import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

///@Description TODO
///@Author jd
class RepaintBoundaryDemo extends StatefulWidget {
  const RepaintBoundaryDemo({Key? key}) : super(key: key);

  @override
  State<RepaintBoundaryDemo> createState() => _RepaintBoundaryDemoState();
}

class _RepaintBoundaryDemoState extends State<RepaintBoundaryDemo> {
  //全局key
  final GlobalKey _rootWidgetKey = GlobalKey();
//图片数组
  List<Uint8List> _images = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            //获取截屏图像
            Future<Uint8List?> pngBytes = _capturePng(_rootWidgetKey);
            //添加到图片数组中
            pngBytes.then((Uint8List? value) {
              if (value != null) {
                _images.add(value);
              }
            });
            setState(() {});
          },
          child: const Text("截图"),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Image.memory(
                _images[index],
                fit: BoxFit.cover,
              );
            },
            itemCount: _images.length,
          ),
        ),
        RepaintBoundary(
          key: _rootWidgetKey,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: const Text('123123'),
          ),
        ),
      ],
    );
  }

  ///截图
  Future<Uint8List?> _capturePng(
    GlobalKey globalKey, {
    double pixelRatio = 1.0, //截屏的图片与原图的比例
  }) async {
    try {
      RenderRepaintBoundary boundary =
          globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage(pixelRatio: pixelRatio);
      ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List? pngBytes = byteData?.buffer.asUint8List();
      return pngBytes;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
