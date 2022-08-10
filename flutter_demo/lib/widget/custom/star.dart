import 'package:flutter/material.dart';

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
            color: Colors.grey,
          ),
          ClipRect(
              child: Align(
            alignment: Alignment.topLeft,
            widthFactor: factor,
            child: const Icon(
              Icons.star,
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade Star'),
      ),
      body: Column(
        children: <Widget>[Row(children: _getGradeStar(4.5, 5))],
      ),
    );
  }
}
