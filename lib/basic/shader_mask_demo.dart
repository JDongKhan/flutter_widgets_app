import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ShaderMaskDemo extends StatefulWidget {
  const ShaderMaskDemo({Key? key}) : super(key: key);

  @override
  State<ShaderMaskDemo> createState() => _ShaderMaskDemoState();
}

class _ShaderMaskDemoState extends State<ShaderMaskDemo> {
  Color color = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.blue, Colors.green],
                ).createShader(bounds);
              },
              blendMode: BlendMode.color,
              child: Image.asset(
                'meinv2.png'.toImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      color,
                      color,
                      Colors.transparent,
                      Colors.transparent,
                      color,
                      color
                    ],
                    stops: const [
                      0,
                      .4,
                      .41,
                      .6,
                      .61,
                      1
                    ]).createShader(bounds);
              },
              blendMode: BlendMode.color,
              child: Image.asset(
                'meinv2.png'.toImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  radius: .5,
                  colors: <Color>[Colors.red, Colors.blue],
                ).createShader(bounds);
              },
              blendMode: BlendMode.color,
              child: Image.asset(
                'meinv2.png'.toImg,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            width: 200,
            height: 200,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const SweepGradient(
                  colors: <Color>[
                    Colors.red,
                    Colors.blue
                  ],
                ).createShader(bounds);
              },
              child: Image.asset(
                'meinv2.png'.toImg,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
