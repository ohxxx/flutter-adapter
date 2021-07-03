import 'package:flutter/material.dart';
import 'package:flutter_adapt/adapt.dart';
import 'package:google_fonts/google_fonts.dart';

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
  /// [title] 当前标题的文本信息，String类型
  Container _customCard(String title) {
    return Container(
      width: Adapt().adaptPx(375),
      height: Adapt().adaptPx(50),
      margin: EdgeInsets.only(top: Adapt().adaptPx(10)),
      color: Color(0xff3C5186),
      child: _customText(title),
    );
  }

  /// text组件
  ///
  /// [title] 当前标题的文本信息，String类型
  Align _customText(String title) {
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
        backgroundColor: Color(0xff3C5186),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _customCard('Liquid layout'),
            _customCard('Full screen layout'),
          ],
        ),
      ),
    );
  }
}
