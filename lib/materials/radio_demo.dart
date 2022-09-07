import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var _radioValue = '1';
  var _radioGroupValue = '';

  var _radioGroupValue1 = '语文';
  var _radioGroupValue2 = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
              value: _radioValue,
              groupValue: _radioGroupValue,
              onChanged: (value) {
                print('$value');
                setState(() {
                  _radioGroupValue = value.toString();
                });
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Radio(
              value: '语文',
              groupValue: _radioGroupValue1,
              onChanged: (value) {
                setState(() {
                  _radioGroupValue1 = value.toString();
                });
              },
            ),
            Radio(
              value: '数学',
              groupValue: _radioGroupValue1,
              onChanged: (value) {
                setState(() {
                  _radioGroupValue1 = value.toString();
                });
              },
            ),
            Radio(
              value: '英语',
              groupValue: _radioGroupValue1,
              onChanged: (value) {
                setState(() {
                  _radioGroupValue1 = value.toString();
                });
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: RadioListTile(
                title: const Text('语文'),
                value: '语文',
                groupValue: _radioGroupValue2,
                onChanged: (value) {
                  setState(() {
                    _radioGroupValue2 = value.toString();
                  });
                },
              ),
            ),
            Flexible(
                child: RadioListTile(
              title: const Text('数学'),
              value: '数学',
              groupValue: _radioGroupValue2,
              onChanged: (value) {
                setState(() {
                  _radioGroupValue2 = value.toString();
                });
              },
            )),
            Flexible(
                child: RadioListTile(
              title: const Text('英语'),
              value: '英语',
              groupValue: _radioGroupValue2,
              onChanged: (value) {
                setState(() {
                  _radioGroupValue2 = value.toString();
                });
              },
            )),
          ],
        ),
      ],
    );
  }
}
