import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class StatefulBuilderDemo extends StatelessWidget {
  const StatefulBuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              int selectedRadio = 0;
              return AlertDialog(
                content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List<Widget>.generate(4, (int index) {
                        return Radio<int>(
                          value: index,
                          groupValue: selectedRadio,
                          onChanged: (int? value) {
                            setState(() => selectedRadio = value ?? 0);
                          },
                        );
                      }),
                    );
                  },
                ),
              );
            },
          );
        },
        child: const Text('点我'),
      ),
    );
  }
}
