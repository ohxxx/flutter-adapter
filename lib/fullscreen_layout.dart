import 'package:flutter/material.dart';

import 'adapt.dart';
import 'common.dart';

class FullScreenLayout extends StatefulWidget {
  const FullScreenLayout({Key? key}) : super(key: key);

  @override
  _FullScreenLayoutState createState() => _FullScreenLayoutState();
}

class _FullScreenLayoutState extends State<FullScreenLayout> {
  /// 圆形组件
  Widget commonCircleWidget() {
    return Container(
      width: Adapt().adaptPx(70),
      height: Adapt().adaptPm(70),
      margin: EdgeInsets.only(top: Adapt().adaptPm(15)),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0x33000000),
      ),
    );
  }

  /// row组件
  Widget commonRowWidgt() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: commonCircleWidget(),
        ),
        Expanded(
          flex: 1,
          child: commonCircleWidget(),
        ),
        Expanded(
          flex: 1,
          child: commonCircleWidget(),
        ),
      ],
    );
  }

  /// lineblock组件
  Widget commonLineWidget({double top = 10}) {
    return lineBlock(
      color: lightColor,
      width: 320,
      margin: EdgeInsets.only(top: top),
      isAdapt: true,
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
        child: Column(
          children: [
            Container(
              width: Adapt().adaptPx(375),
              height: Adapt().adaptPm(150),
              margin: EdgeInsets.all(Adapt().adaptPm(10)),
              decoration: BoxDecoration(
                color: Color(0x26000000),
                borderRadius: BorderRadius.circular(Adapt().adaptPx(30)),
              ),
              child: Column(children: [
                commonLineWidget(top: 15),
                commonLineWidget(),
                commonLineWidget(),
                commonLineWidget(),
              ]),
            ),
            Container(
              width: Adapt().adaptPx(375),
              height: Adapt().adaptPm(370),
              margin: EdgeInsets.all(Adapt().adaptPm(10)),
              decoration: BoxDecoration(
                color: Color(0x26000000),
                borderRadius: BorderRadius.circular(Adapt().adaptPx(30)),
              ),

              /// 此处布局不适用GridView布局
              /// 是为了更好凸显单屏适配规则
              ///
              child: Column(
                children: [
                  commonRowWidgt(),
                  commonRowWidgt(),
                  commonRowWidgt(),
                  commonRowWidgt(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
