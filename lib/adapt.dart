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

  factory Adapt() => _instance!;

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

  /// 主要用于流式布局的适配，既使用宽度比进行页面适配
  ///
  /// 对于widget的`width`、`height`、`radius`、`padding`、`madding`等的适配
  double adaptPx(double value) => value * widthRatio;

  /// 主要用整屏布局适配，既使用高度比进行页面适配.
  /// 但是对于整屏显示内容不适用与全部使用 [adaptPm(x)] 进行适配，应当与[adaptPx(x)]结合使用
  /// * 例如：
  ///   *  width、height使用adaptPx适配
  ///   *  padding、madding使用adaptPm适配
  ///
  /// 对于于widget的`width`、`height`、`radius`、`padding`、`madding`等的适配
  double adaptPm(double value) => value * heightRatio;

  /// 动态适配
  /// 适用于公共组件对于不同布局的适配
  ///
  /// `flag`根据参数进行动态换算处理，true使用[adaptPm]，false使用[adaptPx]
  /// `value`需要适配的尺寸
  double adaptDynamic(bool flag, double value) =>
      flag ? adaptPm(value) : adaptPx(value);

  /// 主要用于字体适配，可设置`fontRatio`进行字体比例设置
  ///
  /// 对于`fontSize`适配
  double adaptSp(double fontSize) => adaptPx(fontSize) / _fontRatio;
}
