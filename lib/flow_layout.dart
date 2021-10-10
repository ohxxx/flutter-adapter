import 'package:flutter/material.dart';

import 'adapter.dart';
import 'common.dart';

class FlowLayout extends StatefulWidget {
  const FlowLayout({Key? key}) : super(key: key);

  @override
  _FlowLayoutState createState() => _FlowLayoutState();
}

class _FlowLayoutState extends State<FlowLayout> {
  /// card小组件
  Widget _customCard() {
    return Container(
      width: Adapter().pw(375),
      height: Adapter().pw(150),
      margin: EdgeInsets.all(Adapter().pw(10)),
      decoration: BoxDecoration(
        color: Color(0x26000000),
        borderRadius: BorderRadius.circular(Adapter().pw(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Adapter().pw(72),
            height: Adapter().pw(72),
            margin: EdgeInsets.all(Adapter().pw(15)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x33000000),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Adapter().pw(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                lineBlock(color: darkColor),
                lineBlock(color: lightColor),
                lineBlock(color: lightColor),
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
