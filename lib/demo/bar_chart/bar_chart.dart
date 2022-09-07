import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

///@Description TODO
///@Author jd
///信息描述类 [value]为进度，在0~1之间,进度条颜色[color]，
///未完成的颜色[backgroundColor],圆的半径[radius],线宽[strokeWidth]
///小点的个数[dotCount] 样式[style] 完成后的显示文字[completeText]
class BarValue {
  double value;
  Color color;
  BarValue({
    this.value = 0,
    this.color = Colors.red,
  });
}

class CircleDistributeProgress extends StatefulWidget {
  final List<BarValue> list;
  final double lineWith;
  const CircleDistributeProgress({
    Key? key,
    required this.list,
    this.lineWith = 40,
  }) : super(key: key);
  @override
  State createState() => _CircleDistributeProgressState();
}

class _CircleDistributeProgressState extends State<CircleDistributeProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: CustomPaint(
        painter: BarPainter(widget.list, lineWith: widget.lineWith),
      ),
    );
  }
}

class BarPainter extends CustomPainter {
  BarPainter(
    this.list, {
    this.lineWith = 40,
    this.padding = EdgeInsets.zero,
    this.maxYValue = 200,
    this.maxColumn = 5,
    this.maxRow = 5,
    this.dividerColor = const Color(0xFFCECECE),
  });

  final List<BarValue> list;
  final double lineWith;
  final Color dividerColor; //背景分隔线颜色
  final EdgeInsets padding; //图表的padding
  final double maxYValue; //Y轴最大值
  final int maxColumn;
  final int maxRow; //Y轴均分几份

  double _fixedHeight = 0, _fixedWidth = 0; //chart宽高
  //注意这里是左下开始 右上结束。
  double _startX = 0, _endX = 0, _startY = 0, _endY = 0; //表的实际绘制区域（去除padding）
  double _xWidth = 0, _yHeight = 0; //X/Y轴每个项目的宽度

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Offset.zero & size;
    canvas.clipRect(rect); //裁剪区域
    //初始化边界
    _init(size);
    //画边框
    _drawBorder(canvas);
    //画格子线
    _drawDividerLine(canvas);
    //画bar
    _drawBar(canvas);
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

  ///画边框
  void _drawBorder(Canvas canvas) {
    var paint = Paint()
      ..isAntiAlias = true //抗锯齿
      ..strokeWidth = 1
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

  void _drawBar(Canvas canvas) {
    int i = 0;
    for (BarValue barValue in list) {
      var paint = Paint() // 创建一个画笔并配置其属性
        ..strokeWidth = lineWith // 画笔的宽度
        ..isAntiAlias = true // 是否抗锯齿
        ..style = PaintingStyle.stroke
        ..color = barValue.color; // 画笔颜色
      Path path = Path()
        ..moveTo(_startX + (i + 1) * _xWidth, _startY)
        ..lineTo(_startX + (i + 1) * _xWidth,
            _startY - barValue.value / maxYValue * _fixedHeight);
      canvas.drawPath(path, paint);
      i++;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
