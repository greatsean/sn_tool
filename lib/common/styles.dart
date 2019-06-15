import 'package:flutter/widgets.dart';

abstract class Styles {
  static const backTextStyle = TextStyle(color: Color(0xff000000));
  static const headlineText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontFamily: 'NotoSans',
    fontSize: 32.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
}
