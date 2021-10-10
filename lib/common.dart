import 'package:flutter/material.dart';

import 'adapter.dart';

const Color darkColor = Color(0x33000000);
const Color lightColor = Color(0x1a000000);

/// 线块组件
///
/// `color`颜色深浅，可选参数[darkColor]、[lightColor]
/// `width`组件宽度，默认220
/// `margin`外边距距离，默认bottom: 12, left: 6
Widget lineBlock({
  Color color = lightColor,
  double width = 220,
  EdgeInsets margin = const EdgeInsets.only(
    bottom: 12,
    left: 6,
  ),
  bool isAdapt = false,
}) {
  return Container(
    width: Adapter().adapterPx(width),
    height: Adapter().adapterDynamic(isAdapt, 20),
    margin: EdgeInsets.only(
      bottom: Adapter().adapterDynamic(isAdapt, margin.bottom),
      left: Adapter().adapterDynamic(isAdapt, margin.left),
      top: Adapter().adapterDynamic(isAdapt, margin.top),
      right: Adapter().adapterDynamic(isAdapt, margin.right),
    ),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(Adapter().adapterPx(5)),
    ),
  );
}
