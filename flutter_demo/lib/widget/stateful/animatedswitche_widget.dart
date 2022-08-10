import 'package:flutter/material.dart';

import '../../common/style.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int _count = 0;
  var _crossFadeState = CrossFadeState.showFirst;
  bool get isFirst => _crossFadeState == CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher和AnimatedCrossFade'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '子组件变化动画',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  '当子组件变化时执行动画，需要指定子组件的key进行标识。动画方式',
                  style: descStyle,
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  _buildMinusBtn(),
                  SizedBox(
                    width: 80,
                    child: _buildAnimatedSwitcher(context),
                  ),
                  _buildAddBtn()
                ],
              ),
              const Text(
                '组件切换动画',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  '将两个组件切换时呈现动画效果，可指定动画曲线、时长、对齐方式等属性。是一个非常有用的组件。',
                  style: descStyle,
                ),
              ),
              Switch(
                value: isFirst,
                onChanged: (v) {
                  setState(() {
                    _crossFadeState = v
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond;
                  });
                },
              ),
              Wrap(
                children: [
                  SizedBox(
                    child: AnimatedCrossFade(
                      firstCurve: Curves.easeInCirc,
                      secondCurve: Curves.easeInToLinear,
                      sizeCurve: Curves.bounceOut,
                      firstChild: Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 200,
                        color: Colors.orange,
                        child: const FlutterLogo(
                          textColor: Colors.blue,
                          size: 50,
                        ),
                      ),
                      secondChild: Container(
                        width: 200,
                        height: 150,
                        alignment: Alignment.center,
                        color: Colors.blue,
                        child: const FlutterLogo(
                          textColor: Colors.white,
                          size: 100,
                          style: FlutterLogoStyle.stacked,
                        ),
                      ),
                      duration: const Duration(milliseconds: 1000),
                      crossFadeState: _crossFadeState,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedSwitcher(BuildContext context) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
          scale: animation,
          child: RotationTransition(turns: animation, child: child),
        ),
        child: Text(
          '$_count',
          key: ValueKey<int>(_count),
          style: titleStyle,
        ),
      );

  Widget _buildMinusBtn() {
    return MaterialButton(
      padding: const EdgeInsets.all(0),
      textColor: const Color(0xffFfffff),
      elevation: 3,
      color: Colors.red,
      highlightColor: const Color(0xffF88B0A),
      splashColor: Colors.red,
      shape: const CircleBorder(
        side: BorderSide(
          width: 2.0,
          color: Color(0xFFDFDFDF),
        ),
      ),
      onPressed: () => setState(() => _count -= 1),
      child: const Icon(
        Icons.remove,
        color: Colors.white,
      ),
    );
  }

  Widget _buildAddBtn() => MaterialButton(
        padding: const EdgeInsets.all(0),
        textColor: const Color(0xffFfffff),
        elevation: 3,
        color: Colors.blue,
        highlightColor: const Color(0xffF88B0A),
        splashColor: Colors.red,
        shape: const CircleBorder(
          side: BorderSide(
            width: 2.0,
            color: Color(0xffdfdfdf),
          ),
        ),
        onPressed: () => setState(() => _count += 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      );
}
