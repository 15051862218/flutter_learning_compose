import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

// 数据类型
class ItemBean {
  final String title;
  final String subTitle;
  final String imgUrl;

  ItemBean(this.title,this.subTitle,this.imgUrl);
}

// 枚举
enum ItemType { java, kotlin, dart }

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({Key? key}) : super(key: key);

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidget();
}

class _RadioListTileWidget extends State<RadioListTileWidget> {
  final Map<ItemType, ItemBean> languages = {
    ItemType.java: ItemBean("Java", "曾经世界上最流行的语言", "images/java.webp"),
    ItemType.kotlin: ItemBean("kotlin", "未来世界上最流行的语言", "images/kotlin.webp"),
    ItemType.dart: ItemBean("dart", "世界上最优雅的语言", "images/dart.webp"),
  };
  var _type = ItemType.java;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListTile'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '单选列表组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Radio，相应位置可插入组件，可以很方便地应对特定的条目',
                  style: descStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.green.withAlpha(66),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: languages.keys
                      .map(
                        (type) => RadioListTile<ItemType>(
                          value: type,
                          groupValue: _type,
                          dense: false,
                          activeColor: Colors.orangeAccent,
                          title: Text(languages[type]!.title),
                          secondary: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(languages[type]!.imgUrl),
                          ),
                          subtitle: Text(languages[type]!.subTitle),
                          onChanged: (type) => setState(() => _type = type!),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
