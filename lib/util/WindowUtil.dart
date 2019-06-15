import 'package:flutter/widgets.dart';

/**
 * 窗口相关工具
 */
abstract class WindowUtil {
  static Size getWindowSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getWindowWidth(BuildContext context) {
    return getWindowSize(context).width;
  }

  static double getWindowHeight(BuildContext context) {
    return getWindowSize(context).height;
  }
}
