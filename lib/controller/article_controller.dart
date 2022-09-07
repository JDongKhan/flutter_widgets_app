import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd

class ArticleController extends ChangeNotifier {
  Map? widgetInfo;

  String? selectTitle;
  List? selectedWidgets;

  String? url;
  String? title;

  void loadList() async {
    String string = await rootBundle.loadString('menus.json'.toAssets);
    widgetInfo = jsonDecode(string);
    String? firstKey = widgetInfo?.keys.first;
    selectTitle = firstKey;
    if (selectedWidgets == null) {
      selectedWidgets = widgetInfo?[firstKey!];
      Map? firstWidget = selectedWidgets?.first;
      title = firstWidget?['title'];
      url = 'article/$title.md';
      notifyListeners();
    }
  }

  void select(String widgetName) {
    selectTitle = widgetName;
    selectedWidgets = widgetInfo?[widgetName];
    if (selectedWidgets?.isNotEmpty ?? false) {
      Map? firstWidget = selectedWidgets?.first;
      title = firstWidget?['title'];
      url = 'article/$title.md';
    }
    notifyListeners();
  }

  void openUrl(String? title) {
    this.title = title;
    url = 'article/$title.md';
    notifyListeners();
  }
}
