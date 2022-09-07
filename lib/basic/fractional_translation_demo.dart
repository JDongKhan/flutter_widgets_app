import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FractionalTranslationDemo extends StatelessWidget {
  const FractionalTranslationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blue,
      child: FractionalTranslation(
        translation: const Offset(0.25, .2),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
