import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AboutListTileDemo extends StatelessWidget {
  const AboutListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AboutListTile(
      icon: FlutterLogo(),
      applicationName: 'AboutListTileDemo',
      applicationVersion: 'V1.0.0',
      applicationIcon: FlutterLogo(),
      applicationLegalese: 'AboutListTileDemo',
      child: Text('AboutListTileDemo'),
    );
  }
}
