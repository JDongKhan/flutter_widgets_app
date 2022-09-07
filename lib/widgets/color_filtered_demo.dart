import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ColorFilteredDemo extends StatelessWidget {
  const ColorFilteredDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'meinv2.png'.toImg,
          ),
        ),
        Expanded(
          child: ColorFiltered(
            colorFilter:
                ColorFilter.mode(Colors.pink[200]!, BlendMode.modulate),
            child: Image.asset(
              'meinv2.png'.toImg,
            ),
          ),
        ),
      ],
    );
  }
}
