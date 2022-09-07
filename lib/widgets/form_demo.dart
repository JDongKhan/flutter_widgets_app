import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  String? _account;
  String? _pwd;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(hintText: '输入账号'),
            onSaved: (value) {
              _account = value;
            },
            validator: (String? value) {
              return (value?.isNotEmpty ?? false) ? null : '账号最少6个字符';
            },
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: '输入密码'),
            obscureText: true,
            onSaved: (value) {
              _pwd = value;
            },
            validator: (String? value) {
              return (value?.isNotEmpty ?? false) ? null : '账号最少6个字符';
            },
          ),
          TextButton(
            child: const Text('登录'),
            onPressed: () {
              FormState? state = _formKey.currentState;
              if (state?.validate() ?? false) {
                state?.save();
              }
            },
          )
        ],
      ),
    );
  }
}
