import 'package:flutter/widgets.dart';

class TransformHelper {
  static Transform rotate(
      {double a = 1,
      double b = 0,
      double c = 0,
      double d = 1,
      required Widget child}) {
    return Transform(
      transform: Matrix4(a, c, 0, 0, b, d, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }

  static Transform scale(
      {double x = 1, double y = 1, double z = 1, required Widget child}) {
    return Transform(
      transform: Matrix4(x, 0, 0, 0, 0, y, 0, 0, 0, 0, z, 0, 0, 0, 0, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }

  static Transform translate(
      {double x = 0, double y = 0, double z = 0, required Widget child}) {
    return Transform(
      transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, x, y, z, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }

  static Transform translateAndScale(
      {double translateX = 0,
      double translateY = 0,
      double translateZ = 0,
      double scaleX = 1,
      double scaleY = 1,
      double scaleZ = 1,
      required Widget child}) {
    return Transform(
      transform: Matrix4(scaleX, 0, 0, 0, 0, scaleY, 0, 0, 0, 0, scaleZ, 0,
          translateX, translateY, translateZ, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }
}
