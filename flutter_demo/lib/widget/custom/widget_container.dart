import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/tag.dart';

// 封装分类页面中列表中的每个Container组件
// ignore: must_be_immutable
class WidgetContainer extends StatelessWidget {
  ContainerInfo info;

  WidgetContainer(this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
        // 装饰整个Container
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.indigo),
          color: Colors.blue.withAlpha(77),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                //装饰形状、背景色、阴影等
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, //Container为圆形
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        0.0,
                        3.0, //阴影y轴偏移量
                      ),
                      blurRadius: 10, //阴影模糊程度
                      spreadRadius: 2, //阴影扩散程度
                    ),
                  ],
                ),
                child: Text(
                  info.title.substring(0, 1),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                ),
              ),
              title: Text(
                info.title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                ),
              ),
              subtitle: Text(
                info.subTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              selected: false,
              contentPadding: const EdgeInsets.all(5),
              dense: false,
              onTap: () => {Navigator.pushNamed(context, info.url)},
            ),
            const SizedOverflowBox(
              alignment: Alignment.center,
              size: Size.zero,
              child: Padding(
                  padding: EdgeInsets.only(
                    right: 80.0,
                    top: 25,
                  ),
                  child: Tag(
                    color: Colors.blue,
                    shadowHeight: 16.0,
                    size: Size(30, 40),
                  )),
            ),
            GradeStart(),
          ],
        ));
  }
}

class ContainerInfo {
  late String title;
  late String subTitle;
  late String url;

  ContainerInfo(this.title, this.subTitle, this.url);
}

class GradeStart extends StatelessWidget {
  List<Widget> _getGradeStar(double score, int total) {
    List<Widget> _list = <Widget>[];
    for (var i = 0; i < total; i++) {
      double factor = (score - i);
      if (factor >= 1) {
        factor = 1.0;
      } else if (factor < 0) {
        factor = 0;
      }
      Stack _st = Stack(
        children: <Widget>[
          const Icon(
            Icons.star,
            size: 20,
            color: Colors.grey,
          ),
          ClipRect(
              child: Align(
            alignment: Alignment.bottomLeft,
            widthFactor: factor,
            child: const Icon(
              Icons.star,
              size: 20,
              color: Colors.redAccent,
            ),
          ))
        ],
      );
      _list.add(_st);
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [Row(children: _getGradeStar(4, 4))],
    );
  }
}
