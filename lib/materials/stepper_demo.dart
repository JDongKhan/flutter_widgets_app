import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class StepperDemo extends StatelessWidget {
  const StepperDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Stepper(
        steps: const <Step>[
          Step(title: Text('2020-4-23'), content: Text('今天是2020-4-23')),
          Step(title: Text('2020-4-24'), content: Text('今天是2020-4-24')),
          Step(title: Text('2020-4-25'), content: Text('今天是2020-4-25')),
        ],
      ),
    );
  }
}
