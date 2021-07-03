import 'package:flutter/material.dart';

class FullScreenLayout extends StatefulWidget {
  const FullScreenLayout({Key? key}) : super(key: key);

  @override
  _FullScreenLayoutState createState() => _FullScreenLayoutState();
}

class _FullScreenLayoutState extends State<FullScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3C5186),
      appBar: AppBar(
        backgroundColor: Color(0xff3C5186),
        elevation: 0,
      ),
      body: Center(),
    );
  }
}
