import 'package:flutter/rendering.dart';

import 'chart_line.dart';
import 'common/dates.dart';
import 'common/datetime_series_converter.dart';
import 'common/pair.dart';
import 'line_chart.dart';

class AreaLineChart extends LineChart {
  Map<int, Path> _areaPathMap = Map();
  final FontWeight? tapTextFontWeight;
  final String? yAxisName;
  final List<Pair<Color, Color>>? _gradients;

  AreaLineChart(List<ChartLine> lines, Dates fromTo, this._gradients,
      {this.tapTextFontWeight, this.yAxisName})
      : super(lines, fromTo,
            tapTextFontWeight: tapTextFontWeight, yAxisName: yAxisName);

  factory AreaLineChart.fromDateTimeMaps(List<Map<DateTime, double>> series,
      List<Color> colors, List<String> units,
      {List<Pair<Color, Color>>? gradients,
      FontWeight? tapTextFontWeight,
      String? yAxisName}) {
    assert(series.length == colors.length);
    assert(series.length == units.length);

    Pair<List<ChartLine>, Dates> convertFromDateMaps =
        DateTimeSeriesConverter.convertFromDateMaps(series, colors, units);
    return AreaLineChart(
        convertFromDateMaps.left, convertFromDateMaps.right, gradients,
        tapTextFontWeight: tapTextFontWeight, yAxisName: yAxisName);
  }

  List<Pair<Color, Color>>? get gradients => _gradients;

  Path? getAreaPathCache(int index) {
    if (_areaPathMap.containsKey(index)) {
      return _areaPathMap[index];
    } else {
      Path pathCache = getPathCache(index)!;

      Path areaPath = Path();
      areaPath.moveTo(pathCache.getBounds().left, pathCache.getBounds().bottom);
      areaPath.addPath(pathCache, Offset(0, 0));

      areaPath.lineTo(
          pathCache.getBounds().right, pathCache.getBounds().bottom);
      areaPath.lineTo(pathCache.getBounds().left, pathCache.getBounds().bottom);

      _areaPathMap[index] = areaPath;
      return areaPath;
    }
  }
}
