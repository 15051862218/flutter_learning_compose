import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "对话框",
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  "最简单的对话框，包含一个内容组件，可指定影深，背景色，形状等属性",
                  style: descStyle,
                ),
              ),
              MaterialButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Colors.blue,
                onPressed: () {
                  showDialog(
                      context: context, builder: (ctx) => _buildDialog());
                },
                child: const Text(
                  'Just Show It!',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
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
        alignment: Alignment.center,
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
