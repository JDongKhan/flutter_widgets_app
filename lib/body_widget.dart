import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/main_content_widget.dart';
import 'package:flutter_widgets_app/utils/screen_utils.dart';

import 'left_menu_widget.dart';

///@Description TODO
///@Author jd
class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ScreenUtils.isMobile(context)) {
      return Column(
        children: const [
          LeftMenuWidget(),
          Expanded(
            child: MainContentWidget(),
          ),
        ],
      );
    }
    return Row(
      children: const [
        LeftMenuWidget(),
        Expanded(
          child: MainContentWidget(),
        ),
      ],
    );
  }
}
