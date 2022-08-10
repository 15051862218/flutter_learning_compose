import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Placeholder',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '占位组件',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                '一个矩形和叉叉的占位组件，,可指定颜色、线宽、宽高等属性',
                style: descStyle,
              ),
            ),
            const UnconstrainedBox(
              child: Placeholder(
                color: Colors.blue,
                strokeWidth: 2,
                fallbackHeight: 100,
                fallbackWidth: 150,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 150,
              height: 150 * 0.618,
              child: Placeholder(
                color: Colors.orange,
                strokeWidth: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
