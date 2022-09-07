import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController _controller = TextEditingController();
  var _textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
          ),
        ),
        const TextField(
          decoration: InputDecoration(suffixIcon: Icon(Icons.person)),
        ),
        TextField(
          onChanged: (value) {
            setState(() {
              _textFieldValue = value;
            });
          },
          decoration:
              InputDecoration(counterText: '${_textFieldValue.length}/32'),
        ),
        const TextField(
          decoration: InputDecoration(
              labelText: '姓名：', labelStyle: TextStyle(color: Colors.red)),
        ),
        const TextField(
          decoration: InputDecoration(
              helperText: '用户名长度为6-10个字母',
              helperStyle: TextStyle(color: Colors.blue),
              helperMaxLines: 1),
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: '请输入用户名',
              hintStyle: TextStyle(color: Colors.grey),
              hintMaxLines: 1),
        ),
        const TextField(
          decoration: InputDecoration(
            errorText: '用户名输入错误',
            errorStyle: TextStyle(fontSize: 12),
            errorMaxLines: 1,
            errorBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          ),
        ),
        const SizedBox(
          height: 60,
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0x30cccccc),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x00FF0000)),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              hintText: 'QQ号/手机号/邮箱',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x00000000)),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
            ),
          ),
        ),
        SizedBox(
          height: 36,
          child: TextField(
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
              labelText: '姓名',
              prefixIcon: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Image.asset('meinv2.png'.toImg),
              ),
              prefixIconConstraints:
                  const BoxConstraints(maxWidth: 28, maxHeight: 16),
              contentPadding: const EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
              // enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(4.0),
              //   borderSide: const BorderSide(
              //     color: Colors.grey,
              //     width: 0.5,
              //     style: BorderStyle.solid,
              //   ),
              // ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: const BorderSide(
                  color: Color(0xff2674E8),
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
        const Text('What number comes next in the sequence?(13)'),
        const Text('1, 1, 2, 3, 5, 8...?'),
        TextField(
          controller: _controller,
          onChanged: (String value) async {
            if (value != '13') {
              return;
            }
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('That is correct!'),
                  content: const Text('13 is the right answer.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
