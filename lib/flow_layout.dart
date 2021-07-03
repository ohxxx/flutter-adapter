import 'package:flutter/material.dart';

import 'adapt.dart';

class FlowLayout extends StatefulWidget {
  const FlowLayout({Key? key}) : super(key: key);

  @override
  _FlowLayoutState createState() => _FlowLayoutState();
}

class _FlowLayoutState extends State<FlowLayout> {
  final Color darkColor = Color(0x33000000);
  final Color lightColor = Color(0x1a000000);

  /// 线块组件
  Widget _lineBlock(Color color) {
    return Container(
      width: Adapt().adaptPx(220),
      height: Adapt().adaptPx(20),
      margin: EdgeInsets.only(
        bottom: Adapt().adaptPx(12),
        left: Adapt().adaptPx(6),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(Adapt().adaptPx(5)),
      ),
    );
  }

  /// card小组件
  Widget _customCard() {
    return Container(
      width: Adapt().adaptPx(375),
      height: Adapt().adaptPx(150),
      margin: EdgeInsets.all(Adapt().adaptPx(10)),
      decoration: BoxDecoration(
        color: Color(0x26000000),
        borderRadius: BorderRadius.circular(Adapt().adaptPx(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Adapt().adaptPx(72),
            height: Adapt().adaptPx(72),
            margin: EdgeInsets.all(Adapt().adaptPx(15)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x33000000),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Adapt().adaptPx(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _lineBlock(darkColor),
                _lineBlock(lightColor),
                _lineBlock(lightColor),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3C5186),
      appBar: AppBar(
        backgroundColor: Color(0xff3C5186),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _customCard(),
              _customCard(),
              _customCard(),
              _customCard(),
              _customCard(),
              _customCard(),
            ],
          ),
        ),
      ),
    );
  }
}
