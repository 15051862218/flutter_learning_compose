import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.green,
    ];
    var dataThickness = [10.0, 20.0, 30.0, 40.0];
    var data = Map.fromIterables(dataColor, dataThickness);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "水平分割线",
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: const Text(
                "水平分割线，可指定颜色、高度、粗细、左右边距等信息，常用列表的item分割线",
                style: descStyle,
              ),
            ),
            Container(
              child: Column(
                children: dataColor
                    .map((e) => Divider(
                          color: e,
                          indent: data[e],
                          endIndent: data[e]! * 2,
                          height: data[e],
                          thickness: data[e]! / 10,
                        ))
                    .toList(),
              ),
            ),
            const Text(
              '垂直分割线',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: const Text(
                "垂直分割线，可指定颜色、高度、粗细、左右边距等信息，常用列表的item分割线",
                style: descStyle,
              ),
            ),
            Container(
              height: 200,
              child: Row(
                children: dataColor
                    .map((e) => VerticalDivider(
                          color: e,
                          indent: data[e],
                          endIndent: data[e]! * 2,
                          width: data[e],
                          thickness: data[e]! / 5,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDialog() => const Dialog(
        backgroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: SizedBox(
          width: 50,
          child: DeleteDialog(),
        ),
      );
}

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildBar(context),
        _buildTile(),
        _buildContent(),
        _buildFooter(context),
      ],
    );
  }

  Widget _buildTile() {
    return const Text(
      'Delete Document',
      style: titleStyle,
    );
  }

  Widget _buildContent() {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        'If you push the conform button,'
        'you will loe this file Are surte to do that ?',
        style: descStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildFooter(context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 15.0, top: 10, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.yellow,
            ),
            child: const Text(
              'Yes',
              style: descStyle,
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.orangeAccent,
              ),
              child: const Text(
                'Cancel',
                style: descStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildBar(context) => Container(
        alignment: Alignment.topRight,
        height: 30,
        margin: const EdgeInsets.only(right: 10, top: 5),
        child: InkWell(
          onTap: () => {
            Navigator.of(context).pop(),
          },
          child: const Icon(
            Icons.close,
            color: Colors.blueAccent,
          ),
        ),
      );
}
