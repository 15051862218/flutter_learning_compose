import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({Key?key}):super(key: key);

  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidget();

}

class _SwitchListTileWidget extends State<SwitchListTileWidget> {
  bool _dense = false;
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTile'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('切换列表组件', style: titleStyle,),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Switch，相应位置可插入组件，可以很方便地应对特定的条目',
                  style: descStyle,),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.green.withAlpha(66),
                child: SwitchListTile(
                  value:_selected,
                  selected: _selected,
                  dense: _dense,
                  activeColor: Colors.orangeAccent,
                  secondary:Image.asset('images/flutter.webp'),
                  activeThumbImage:const AssetImage('images/Android_Studio.png'),
                  inactiveThumbImage: const AssetImage('images/Android_Studio.png'),
                  title: const Text('走进Flutter'),
                  subtitle: const Text('@SwitchListTile组件'),
                  onChanged: (bool?value) =>
                      setState(
                              () =>
                          {
                            _selected = !_selected,
                            _dense = !_dense,
                          }
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}