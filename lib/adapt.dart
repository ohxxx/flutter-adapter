import 'package:flutter/material.dart';

/// [屏幕适配]
class Adapt {
  // 实例
  static Adapt? _instance;
  // 设计稿宽度
  static const int designWidth = 375;
  // 设计稿高度
  static const int designHeight = 667;
  // 媒体信息
  static MediaQueryData? _mediaQueryData;
  // 本地dpi
  static double _dpi = 0;
  // 屏幕宽度
  static double _dpWidth = 0;
  // 屏幕高度
  static double _dpHeight = 0;
  // 字体比例
  static double _fontRatio = 0;
  // 头部安全距离
  static double _topBarHeight = 0;
  // 底部安全距离
  static double _bottomBarHeight = 0;

  Adapt._();

  factory Adapt() {
    return _instance!;
  }

  /// [初始化]
  static void init(BuildContext context) {
    if (_instance == null) {
      _instance = Adapt._();
    }
    _mediaQueryData = MediaQuery.of(context);
    _dpi = _mediaQueryData!.devicePixelRatio;
    _dpWidth = _mediaQueryData!.size.width;
    _dpHeight = _mediaQueryData!.size.height;
    _fontRatio = _mediaQueryData!.textScaleFactor;
    _topBarHeight = _mediaQueryData!.padding.top;
    _bottomBarHeight = _mediaQueryData!.padding.bottom;
  }

  /// [获取本机dpi]
  static double get dpi => _dpi;

  /// [获取本机屏幕宽度]
  static double get dpWidth => _dpWidth;

  /// [获取本机屏幕高度]
  static double get dpHeight => _dpHeight;

  /// [获取本机字体的比例]
  static double get fontRatio => _fontRatio;

  /// [获取本机头部安全距离]
  static double get topBarHeight => _topBarHeight;

  /// [获取本机底部安全距离]
  static double get bottomBarHeight => _bottomBarHeight;

  /// [宽度比]
  get widthRatio => _dpWidth / designWidth;

  /// [高度比]
  get heightRatio => _dpHeight / designHeight;

  /// [主要用于widget的width、height、radius等的适配]
  num adaptPx(double value) => value * widthRatio;

  /// [主要用于widget的padding、madding等的适配]
  num adaptPm(double value) => value * heightRatio;

  /// [主要用于字体适配]
  num adaptSp(double fontSize) => adaptPx(fontSize) / _fontRatio;
}
