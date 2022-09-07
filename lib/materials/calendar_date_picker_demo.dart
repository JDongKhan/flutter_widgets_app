import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CalendarDatePickerDemo extends StatelessWidget {
  const CalendarDatePickerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime firsDateTime = DateTime(2022, 6, 3);
    DateTime nowDate = DateTime(2022, 7, 3);
    DateTime lastDate = DateTime(2022, 8, 3);
    return SizedBox(
      width: 400,
      height: 300,
      child: CalendarDatePicker(
        firstDate: firsDateTime,
        onDateChanged: (DateTime value) {},
        lastDate: lastDate,
        initialDate: nowDate,
      ),
    );
  }
}
