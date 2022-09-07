import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class CircleAvatarDemo extends StatelessWidget {
  const CircleAvatarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          child: Text('王'),
        ),
        const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text('王'),
        ),
        const CircleAvatar(
          foregroundColor: Colors.red,
          child: Text('王'),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('meinv2.png'.toImg),
          child: const Text('王'),
        ),
        const CircleAvatar(
          radius: 40,
          child: Text('王'),
        )
      ],
    );
  }
}
