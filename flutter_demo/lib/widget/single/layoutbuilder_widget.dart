import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({Key? key}) : super(key: key);
  @override
  State<LayoutBuilderWidget> createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  final text = '桃树、杏树、梨树，你不让我，我不让你，都开满了花赶趟⼉。'
      '红的像⽕，粉的像霞，⽩的像雪。'
      '花⾥带着甜味⼉；闭了眼，树上仿佛已经满是桃⼉、杏⼉、梨⼉。'
      '花下成千成百的蜜蜂嗡嗡地闹着，⼤⼩的蝴蝶⻜来⻜去。'
      '野花遍地是：杂样⼉，有名字的，没名字的，散在草丛⾥，像眼睛，像星星，还眨呀眨的。';
  bool expand = false;
  int maxLines = 3;
  final style = const TextStyle(
    fontSize: 15,
    color: Colors.grey,
    shadows: [Shadow(color: Colors.white, offset: Offset(1, 1))],
  );
  double _width = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '布局构造器',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可以监测到⽗容器的区域⼤⼩，并根据⽗容器的尺⼨信息完成定义布局，是⼀个⾮常实⽤的组件。',
                  style: descStyle,
                ),
              ),
              const Text(
                'Layout基本认识',
                style: titleStyle,
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 120,
                color: Colors.blue.shade200,
                child: LayoutBuilder(
                  builder: (_, zone) {
                    return Text(
                      '⽗容器宽：${zone.maxWidth}\n'
                      '⽗容器⾼：${zone.maxHeight}\n',
                      style: titleStyle,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'LayoutBuilder实现展开收起',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '使⽤TextPainter来检测⽂字的⾏数，实现展开收起的效果。',
                  style: descStyle,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.cyanAccent.withAlpha(8),
                  borderRadius:
                      const BorderRadiusDirectional.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(15),
                child: LayoutBuilder(builder: (context, size) {
                  final painter = TextPainter(
                    text: TextSpan(text: text, style: style),
                    maxLines: maxLines,
                    textDirection: TextDirection.ltr,
                  );
                  painter.layout(maxWidth: size.maxWidth);
                  if (!painter.didExceedMaxLines) {
                    return Text(text, style: style);
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(text, maxLines: expand ? null : 3, style: style),
                      GestureDetector(
                        onTap: () => setState(() {
                          expand = !expand;
                        }),
                        child: Text(
                          expand ? '<< 收起' : '展开 >>',
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Layout适应布局',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可以根据组件区域的⼤⼩进⾏组件的展示设计，⽐如在不同宽度的区域显示不同布局的组件。',
                  style: descStyle,
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: _width,
                    child: LayoutBuilder(
                      builder: (_, zone) {
                        if (zone.maxWidth <= 150) {
                          return _buildType1();
                        } else {
                          return _buildType2(zone);
                        }
                      },
                    ),
                  ),
                  _buildSlider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return Slider(
      min: 50,
      max: 300,
      label: "⽗宽:${_width.toStringAsFixed(1)}",
      value: _width,
      onChanged: (v) => setState(() {
        _width = v;
      }),
    );
  }

  Widget _buildType1() => Container(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            _buildTitle(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildContent(),
            ),
          ],
        ),
      );
  Widget _buildType2(BoxConstraints zone) => Container(
        height: 100,
        width: zone.maxWidth,
        color: Colors.orange,
        child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              height: 80,
              width: 30,
              color: Colors.grey,
            ),
            Expanded(child: _buildContent())
          ],
        ),
      );
  Widget _buildTitle() => Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        color: Colors.grey,
        height: 30,
      );
  Widget _buildContent() => Wrap(
        runSpacing: 3,
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 30,
          ),
          Container(
            color: Colors.yellow,
            height: 30,
          ),
          Container(
            color: Colors.green,
            height: 30,
          ),
        ],
      );
}
