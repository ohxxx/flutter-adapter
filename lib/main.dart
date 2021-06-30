import 'package:flutter/material.dart';
import 'package:flutter_adapt/adapt.dart';

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
  /// [主标题组件]
  ///
  /// [title] 当前标题的文本信息，String类型
  Text _title(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: Adapt().adaptSp(16),
      ),
    );
  }

  /// [副标题组件]
  ///
  /// [title] 当前标题的文本信息，String类型
  Text _subTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: Adapt().adaptSp(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    /// [初始化]
    ///
    /// 上下文传入进行媒体查询
    Adapt.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Adapt'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: Adapt().adaptPx(200),
              height: Adapt().adaptPx(200),
              margin: EdgeInsets.only(top: Adapt().adaptPm(30)),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title('Adapt尺寸使用介绍：'),
                  _subTitle('布局的宽高使用：Adapt().adaptPx(x)，根据的是屏幕的宽度比'),
                  _subTitle('布局的上下边距使用：Adapt().adaptPm(x)，根据的是屏幕的高度比'),
                  _subTitle('字体使用：Adapt().adaptSp(x)'),
                  // todo: add more example
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
