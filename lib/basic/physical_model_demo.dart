import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class PhysicalModelDemo extends StatelessWidget {
  const PhysicalModelDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhysicalModel(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
          elevation: 8,
          child: const SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        PhysicalModel(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
          elevation: 18,
          shadowColor: Colors.red,
          child: const SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        const PhysicalShape(
          color: Colors.red,
          clipper: ShapeBorderClipper(shape: CircleBorder()),
          child: SizedBox(
            height: 150,
            width: 150,
          ),
        )
      ],
    );
  }
}
