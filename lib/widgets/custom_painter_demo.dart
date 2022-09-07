import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CustomPainterDemo extends StatelessWidget {
  const CustomPainterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BannerPainter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 200,
          height: 100,
          child: Stack(
            children: [
              Container(
                color: Colors.red,
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: const Text('我是图片'),
              ),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: CustomPaint(
                  painter: BannerPainter(
                    message: '你好啊',
                    textDirection: TextDirection.ltr,
                    location: BannerLocation.topEnd,
                    layoutDirection: TextDirection.ltr,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
