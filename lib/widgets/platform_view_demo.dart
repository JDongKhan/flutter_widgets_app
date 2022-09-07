import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///@Description TODO
///@Author jd
class PlatformViewDemo extends StatefulWidget {
  const PlatformViewDemo({Key? key}) : super(key: key);
  @override
  State<PlatformViewDemo> createState() => _PlatformViewDemoState();
}

class _PlatformViewDemoState extends State<PlatformViewDemo> {
  String text = 'First Text';
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return GestureDetector(
        onTap: () {
          setState(() {
            text = 'Second Text';
          });
        },
        child: AndroidView(
          // 在 native 中的唯一标识符，需要与 native 侧的值相同
          viewType: "platform_text_view",
          // 在创建 AndroidView 的同时，可以传递参数
          creationParams: <String, dynamic>{"text": text},
          // 用来编码 creationParams 的形式，可选 [StandardMessageCodec], [JSONMessageCodec], [StringCodec], or [BinaryCodec]
          // 如果存在 creationParams，则该值不能为null
          creationParamsCodec: const StandardMessageCodec(),
        ),
      );
    }
    if (Platform.isIOS) {
      return GestureDetector(
        onTap: () {
          setState(() {
            text = 'Second Text';
          });
        },
        child: UiKitView(
          viewType: "platform_text_view",
          creationParams: <String, dynamic>{"text": text},
          creationParamsCodec: const StandardMessageCodec(),
        ),
      );
    }
    return Container(
      alignment: Alignment.center,
      child: const Text('当前平台不支持该组件'),
    );
  }
}
