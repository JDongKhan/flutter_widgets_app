import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class InputDatePickerFormFieldDemo extends StatelessWidget {
  const InputDatePickerFormFieldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime firsDateTime = DateTime(2022, 6, 3);
    DateTime nowDate = DateTime(2022, 7, 3);
    DateTime lastDate = DateTime(2022, 8, 3);
    return SizedBox(
      height: 100,
      child: InputDatePickerFormField(
        autofocus: true,
        firstDate: firsDateTime,
        lastDate: lastDate,
        initialDate: nowDate,
      ),
    );
  }
}
