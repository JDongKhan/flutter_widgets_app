import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class DefaultAssetBundleDemo extends StatelessWidget {
  const DefaultAssetBundleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DefaultAssetBundle.of(context)
        .loadString("article/AboutDialog.md".toAssets);
    return Container();
  }
}
