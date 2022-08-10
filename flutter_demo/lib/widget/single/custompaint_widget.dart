import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/common/style.dart';

class CustomPaintWidget extends StatefulWidget {
  const CustomPaintWidget({Key? key}) : super(key: key);
  @override
  State<CustomPaintWidget> createState() => _CustomPaintWidgetState();
}

class _CustomPaintWidgetState extends State<CustomPaintWidget> {
  late ui.Image _image;
  @override
  void initState() {
    super.initState();
    load("images/head-154.jpg").then((i) {
      setState(() {
        _image = i;
      });
    });
  }

  /// 通过assets路径，获取资源图⽚
  Future<ui.Image> load(String asset) async {
    ByteData data = await rootBundle.load(asset);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    ui.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '绘制组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '通过CustomPainter进⾏绘制，可实现⼀些复杂的⾃定义绘制组件，是Flutter中⾃定义组件的灵魂组件。',
                  style: descStyle,
                ),
              ),
              CustomPaint(
//size确定事件区域，如GestureDetector事件只能作⽤在size范围内
                size: const Size(30, 30),
// painter：绘制的 background 层
                painter: BasicPainter(context, _image),
// child：在 painter 层上绘制
                child: const Text(
                  '你好',
                  style: descStyle,
                ),
// foregroundPainter：在 child 层上绘制
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Flutter绘制原理
/// 原点(0, 0)为控件左上⻆，
/// 宽x：右为正⽅向，⾼y：下为正⽅向
/// 顺时针是旋转正⽅向(即从x轴的正⽅向到y轴正⽅向)，和数学相反。
/// pi:圆周率，表示180度。
/// 界⾯尺⼨单位是像素
/// CustomPainter展示的是静态时点的静态⻚⾯，如果想要实现动态效果(如动画，⼿势)需要通过setState更新
/// 所有canvas操作都调⽤的native⽅法
class BasicPainter extends CustomPainter {
  final BuildContext context;
  final ui.Image image;
  BasicPainter(this.context, this.image);
  final Paint _paint = Paint()
    ..color = Colors.red //画笔颜⾊
    ..strokeWidth = 3; //画笔宽度
// ..isAntiAlias = true //是否抗锯⻮
// ..style = PaintingStyle.fill //绘画⻛格，默认为填充
// ..invertColors = true//图像颜⾊反转
// ..colorFilter = ColorFilter.mode(Colors.blueAccent,BlendMode.exclusion) //颜⾊渲染模式，是混合模式
// ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果
// ..filterQuality = FilterQuality.high //颜⾊渲染模式的质量
// ..strokeCap = StrokeCap.round //末端处理 round:圆滑处理(延伸⼀⼩截圆形)square:延伸⼀⼩截矩形 butt:不延伸
// ..strokeJoin=StrokeJoin.round //拐⻆类型,仅影响多边形连线(Canvas.drawPath) round:圆⻆ miter:锐⻆ bevel:斜⻆;该⽅法绘制⾃定义的效果，是所有canvas操作都调⽤到native⽅法canvas:画布，size:CustomPaint构造⽅法传⼊,决定绘制区域宽⾼
  @override
  void paint(Canvas canvas, Size size) {
//绘制点
    const points = [
      Offset(0, 0),
      Offset(25, 25),
      Offset(50, 50),
    ];
    canvas.drawPoints(ui.PointMode.points, points, _paint);
//绘制线
    _paint.color = Colors.blue;
    canvas.drawLine(const Offset(20, 90), const Offset(100, 60), _paint);
//绘制圆
    canvas.drawCircle(const Offset(140, 50), 30, _paint);
    _paint.color = Colors.grey;
    canvas.drawLine(const Offset(0, 150),
        Offset(MediaQuery.of(context).size.width - 20, 150), _paint);

    ///绘制形状
    _paint.color = Colors.green;
//绘制椭圆，两个坐标点，左上右下
    canvas.drawOval(const Rect.fromLTRB(200, 300, 120, 240), _paint);
// 绘制矩形
    Rect rect = const Offset(10, 180) & const Size(100, 80);
    canvas.drawRect(rect, _paint);
    _paint.color = Colors.orange;
// 绘制圆弧，以rect1中⼼为原点，确定绘制起始⽅向和绘制的弧度
    Rect rect1 = const Offset(10, 280) & const Size(100, 80);
    canvas.drawArc(rect1, -pi / 3, pi / 3, true, _paint);
// 绘制圆⻆矩形
// fromLTRBR/fromRectAndRadius：最后⼀个参数是圆⻆半径
    RRect rRect = RRect.fromLTRBR(
      150,
      220,
      200,
      320,
      const Radius.circular(10),
    );
// fromLTRBAndCorners：可以分别设置四个⻆的半径
// RRect rRect = RRect.fromLTRBAndCorners(120, 230, 160, 300, topLeft:Radius.circular(10),);
// fromLTRBXY：最后两个参数XY确定的是椭圆弧度，不是半径相同的圆弧
// RRect rRect = RRect.fromLTRBXY(120, 230, 160, 300, 20, 10);canvas.drawRRect(rRect, _paint);
// canvas可以直接绘制颜⾊，画布上的所有颜⾊均会被混合叠加，可实现全局置灰
// canvas.drawColor(Colors.grey, BlendMode.color);
// 绘制图像
// 注意这⾥的image是ui包⾥的，⽽⾮material包。留意image⽣成⽅式
// offset:图像左上⻆点
// canvas.drawImage(image, Offset(200, 250), _paint);
// drawImageRect(Image image, Rect src, Rect dst, Paint paint)
// src：截取图像显示部分，dst：确定图像显示区域
// src确定的部分会在dst确定的范围内平铺
    canvas.drawImage(image, const Offset(180, 0), _paint);
    canvas.drawImageRect(
        image,
        const Offset(0, 0) &
            Size(image.width.toDouble() / 2, image.height.toDouble()),
        const Offset(280, 250) & const Size(100, 80),
        _paint);
    _paint.color = Colors.grey;
    canvas.drawLine(const Offset(0, 350),
        Offset(MediaQuery.of(context).size.width - 20, 350), _paint);
// 绘制路径
// moveTo起始点（没有默认起始点是0，0），lineTo是途径点（只有1个就是线段） close为闭合图像
    _paint
      ..style = PaintingStyle.stroke
      ..color = Colors.blue;
// 绘制三⻆形
    var path = Path()
      ..moveTo(20, 380)
      ..lineTo(60, 450)
      ..lineTo(20, 450)
      ..close();
    canvas.drawPath(path, _paint);
    path.reset();
//确定桃⼼顶部中间点
    path.moveTo(200, 450);
//画桃⼼左半边
    path.cubicTo(150, 420, 150, 480, 200, 500);
//回到桃⼼顶部中间点
    path.moveTo(200, 450);
//画桃⼼右半边
    path.cubicTo(250, 420, 250, 480, 200, 500);
//上⾊填充
    _paint.style = PaintingStyle.fill;
    _paint.color = Colors.red;
    canvas.drawPath(path, _paint);
  }

// 是否需要重绘。通常在当前实例和旧实例属性不⼀致时返回true
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
