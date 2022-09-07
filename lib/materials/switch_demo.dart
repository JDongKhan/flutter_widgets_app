import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  var _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: _switchValue,
          activeThumbImage: AssetImage(
            'meinv2.png'.toImg,
          ),
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
        SwitchListTile(
          title: const Text('是否允许4G下载'),
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
        CupertinoSwitch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ],
    );
  }
}
