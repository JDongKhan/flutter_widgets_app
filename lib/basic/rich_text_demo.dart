import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <InlineSpan>[
                TextSpan(text: '你好', style: TextStyle(color: Colors.redAccent)),
                TextSpan(text: '，'),
                TextSpan(text: '我很不错哦！'),
              ]),
        )
      ],
    );
  }
}
