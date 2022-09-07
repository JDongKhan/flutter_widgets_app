import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd

showAboutDialogDemo(BuildContext context) {
  showAboutDialog(
    context: context,
    applicationIcon: Image.asset(
      'meinv2.png'.toImg,
      height: 50,
      width: 50,
    ),
    applicationName: '应用程序',
    applicationVersion: '1.0.0',
    applicationLegalese: 'My App content',
    children: <Widget>[
      Container(
        height: 30,
        color: Colors.red,
      ),
      Container(
        height: 30,
        color: Colors.blue,
      ),
      Container(
        height: 30,
        color: Colors.green,
      )
    ],
  );
}
