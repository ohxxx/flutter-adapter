import 'package:flutter/material.dart';
import 'package:flutter_adapt/adapt.dart';
import 'package:google_fonts/google_fonts.dart';

import 'flow_layout.dart';
import 'fullscreen_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// card小组件
  ///
  /// `title` 当前标题的文本信息，[String]
  /// `onTap` 点击跳转事件，[Function]
  Widget _customCard(String title, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: Adapt().adaptPx(375),
        height: Adapt().adaptPx(50),
        margin: EdgeInsets.only(top: Adapt().adaptPx(10)),
        decoration: BoxDecoration(
          color: Color(0x26000000),
        ),
        child: _customText(title),
      ),
    );
  }

  /// text组件
  ///
  /// `title` 当前标题的文本信息，[String]
  Widget _customText(String title) {
    return Align(
      child: Text(
        title,
        style: GoogleFonts.goldman(
          color: Colors.white,
          fontSize: Adapt().adaptSp(16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    /// Adapt 初始化
    ///
    /// 上下文传入进行媒体查询
    Adapt.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Adapt',
          style: GoogleFonts.goldman(),
        ),
        elevation: 0,
        backgroundColor: Color(0xff3C5186),
      ),
      backgroundColor: Color(0xff3C5186),
      body: Center(
        child: Column(
          children: <Widget>[
            _customCard(
              'Flow layout',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const FlowLayout(),
                  ),
                );
              },
            ),
            _customCard(
              'Full screen layout',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const FullScreenLayout(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
