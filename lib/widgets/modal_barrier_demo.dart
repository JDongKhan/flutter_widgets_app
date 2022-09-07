import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ModalBarrierDemo extends StatelessWidget {
  const ModalBarrierDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: ModalBarrier(
          onDismiss: () {
            print('dismiss');
          },
          color: Colors.black.withOpacity(.4),
        ),
      ),
    );
  }
}
