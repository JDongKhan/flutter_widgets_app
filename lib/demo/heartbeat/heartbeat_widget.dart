import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class ChartBeanList {
  ChartBeanList(
    this.list, {
    this.lineColor = Colors.red,
  });
  final Color lineColor; //曲线颜色
  final List<ChartBean> list; //列表
}

class ChartBean {
  final String text;
  final double value;
  Rect? rect;
  ChartBean({
    required this.text,
    required this.value,
  });
}

class HeartBeatPainter extends CustomPainter {
  HeartBeatPainter(
    this.data, {
    this.padding = EdgeInsets.zero,
    this.maxYValue = 200,
    this.maxColumn = 100,
    this.maxRow = 5,
    this.lineWith = 1,
    this.tipChartBean,
    this.dividerColor = const Color(0xFFCECECE),
    this.right = false,
  });
  final List<ChartBeanList> data;
  final double maxYValue; //Y轴最大值
  final EdgeInsets padding; //图表的padding
  final int maxColumn;
  final int maxRow; //Y轴均分几份
  final double lineWith; //曲线宽
  final Color dividerColor; //背景分隔线颜色
  final ChartBean? tipChartBean;
  double _fixedHeight = 0, _fixedWidth = 0; //chart宽高
  //注意这里是左下开始 右上结束。
  double _startX = 0, _endX = 0, _startY = 0, _endY = 0; //表的实际绘制区域（去除padding）
  double _xWidth = 0, _yHeight = 0; //X/Y轴每个项目的宽度
  bool right;
  @override
  void paint(Canvas canvas, Size size) {
    //初始化边界
    _init(size);
    //画边框
    _drawBorder(canvas);
    //画格子线
    _drawDividerLine(canvas);
    //画多个
    for (ChartBeanList beanList in data) {
      //画笔
      var paint = Paint()
        ..isAntiAlias = true //抗锯齿
        ..strokeWidth = lineWith
        ..strokeCap = StrokeCap.round //这个是画笔结束后的样式：这里是圆形
        ..color = beanList.lineColor
        ..style = PaintingStyle.stroke;
      //生成路径
      Path path = _initPath(beanList);
      canvas.drawPath(path, paint);
    }

    //画提示文本
    _drawTip(canvas);
  }

  ///初始化边界
  void _init(Size size) {
    _startX = padding.left;
    _startY = size.height - padding.bottom;
    _endX = size.width - padding.right;
    _endY = padding.top;
    //根据对角位置，算出chart宽度和高度
    _fixedHeight = _startY - _endY;
    _fixedWidth = _endX - _startX;
    //x轴 两值之间的间距
    _xWidth = _fixedWidth / maxColumn;
    _yHeight = _fixedHeight / maxRow;
  }

  ///生成路径
  Path _initPath(ChartBeanList beanList) {
    List<ChartBean> list = beanList.list;
    Path path = Path();
    int length = list.length;
    double offsetX =
        right ? (maxColumn + 1 - beanList.list.length) * _xWidth : 0;
    double startX = _startX + offsetX;
    if (list.isNotEmpty) {
      //前一个数据的 x 值
      //前一个数据的 y 值
      double preX, preY, currentX, currentY;
      for (int i = 0; i < length; i++) {
        ChartBean bean = list[i];
        if (i == 0) {
          currentX = startX; //第一个数的x值
          currentY = (_startY - bean.value / maxYValue * _fixedHeight);
          //移动到对应数据的位置
          path.moveTo(currentX, currentY);
          //保存下来这个数据的位置
          bean.rect = Rect.fromCenter(
            center: Offset(currentX, currentY),
            width: _xWidth / 2,
            height: _yHeight,
          );
          continue;
        }
        //绘制完第一个点后，向右平移一个 宽度（w）
        currentX = startX + _xWidth * i;
        //前一个数据的 x 值
        preX = startX + _xWidth * (i - 1);
        //前一个数据的y值
        preY = (_startY - list[i - 1].value / maxYValue * _fixedHeight);
        currentY = (_startY - bean.value / maxYValue * _fixedHeight);
        bean.rect = Rect.fromCenter(
          center: Offset(currentX, currentY),
          width: _xWidth / 2,
          height: _yHeight,
        );

        //绘制贝塞尔路径  （可以百度了解，有很详尽的介绍）
        path.cubicTo(
          preX + (currentX - preX) / 2,
          preY, // control point 1
          preX + (currentX - preX) / 2,
          currentY, //  control point 2
          currentX,
          currentY,
        );
      }
    }

    return path;
  }

  ///画边框
  void _drawBorder(Canvas canvas) {
    var paint = Paint()
      ..isAntiAlias = true //抗锯齿
      ..strokeWidth = lineWith
      ..strokeCap = StrokeCap.round //这个是画笔结束后的样式：这里是圆形
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;
    //画X轴线
    Path xPath = Path();
    xPath.moveTo(_startX, _startY);
    xPath.lineTo(_endX, _startY);
    canvas.drawPath(xPath, paint);

    //画Y轴线
    Path yPath = Path();
    yPath.moveTo(_startX, _startY);
    yPath.lineTo(_startX, _endY);
    canvas.drawPath(yPath, paint);
  }

  ///画分隔线
  void _drawDividerLine(Canvas canvas) {
    var paint = Paint() // 创建一个画笔并配置其属性
      ..strokeWidth = 1 // 画笔的宽度
      ..isAntiAlias = true // 是否抗锯齿
      ..style = PaintingStyle.stroke
      ..color = dividerColor; // 画笔颜色

    double yPaddingCount = 0.5;
    int yCount = maxRow ~/ yPaddingCount;
    int xCount = maxColumn;
    double yHeight = _yHeight * yPaddingCount;
    double xWidth = _xWidth;
    //画x轴方向线
    for (int i = 0; i < yCount; i++) {
      canvas.drawLine(Offset(_startX, _endY + i * yHeight),
          Offset(_endX, _endY + i * yHeight), paint);
    }

    int xCount1 = xCount ~/ 5;
    double xWidth1 = xWidth * 5;
    //画y轴方向线
    for (int i = 0; i < xCount1; i++) {
      // Path path = Path()
      //   ..moveTo(_startX + (i + 1) * xWidth1, _startY)
      //   ..lineTo(_startX + (i + 1) * xWidth1, _endY);
      // canvas.drawPath(path, paint);
      canvas.drawLine(Offset(_startX + (i + 1) * xWidth1, _startY),
          Offset(_startX + (i + 1) * xWidth1, _endY), paint);
    }

    //画y轴方向线 虚线
    for (int i = 0; i < xCount; i++) {
      Path path = Path()
        ..moveTo(_startX + (i + 1) * xWidth, _startY)
        ..lineTo(_startX + (i + 1) * xWidth, _endY);
      // path = _covertDottedPath(path);
      canvas.drawPath(path, paint);
      // canvas.drawLine(Offset(_startX + (i + 1) * xWidth1, _startY),
      //     Offset(_startX + (i + 1) * xWidth1, _endY), paint);
    }
  }

  ///画提示
  void _drawTip(Canvas canvas) {
    if (tipChartBean != null) {
      Offset center = tipChartBean!.rect!.center;
      double rectHeight = 10; //区域宽
      double sanHeight = 10; //三角高度
      double sanWidth = 10; //三角宽度
      double radius = 3; //圆角
      // 绘制圆
      Rect newRect = Rect.fromCircle(
          center: Offset(center.dx, center.dy - rectHeight - sanHeight),
          radius: rectHeight);
      // Path path = Path()..addRect(newRect);
      // Path path = Path()..addRRect(RRect.fromRectXY(newRect, radius, radius));
      canvas.drawCircle(
          Offset(center.dx, center.dy - rectHeight / 2 - sanHeight),
          rectHeight,
          Paint()..color = Colors.black87);

      //绘制文本
      var textPainter = TextPainter(
        text: TextSpan(
          text: tipChartBean!.text,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        textDirection: TextDirection.ltr,
        maxLines: 1,
      )..layout(minWidth: 0, maxWidth: newRect.width);
      textPainter.paint(canvas,
          Offset(newRect.center.dx - textPainter.width / 2, newRect.center.dy));

      //绘制三角
      double sanJaoHeight = sanHeight;
      var sanJiaoMovex = sanWidth / 2;
      var sanJiaoMovey = sanJaoHeight;

      Path sanjiaoPath = Path()
        ..moveTo(newRect.center.dx - sanJiaoMovex, newRect.bottom)
        ..relativeLineTo(sanJiaoMovex, sanJiaoMovey)
        ..relativeLineTo(sanJiaoMovex, -sanJiaoMovey);

      ///联合两个path
      // path = Path.combine(PathOperation.union, sanjiaoPath, path);
      canvas.drawPath(sanjiaoPath, Paint()..color = Colors.black87);
    }
  }

  ///实现path转换成虚线path
  Path _covertDottedPath(Path path) {
    Path targetPath = Path();
    const dottedLength = 5; //每根虚线的长度
    const dottedGap = 1; //虚线的间距
    for (var metric in path.computeMetrics()) {
      double distance = 0;
      bool isDrawDotted = true;
      while (distance < metric.length) {
        if (isDrawDotted) {
          targetPath.addPath(
              metric.extractPath(distance, distance + dottedLength),
              Offset.zero);
          distance += dottedLength;
        } else {
          distance += dottedGap;
        }
        isDrawDotted = !isDrawDotted;
      }
    }
    return targetPath;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
