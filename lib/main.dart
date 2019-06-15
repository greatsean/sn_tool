// Flutter code sample for widgets.Form.1

// This example shows a [Form] with one [TextFormField] and a [RaisedButton]. A
// [GlobalKey] is used here to identify the [Form] and validate input.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sn_tool/screens/TabHome.dart';
import 'package:sn_tool/screens/TabTxj.dart';
import 'package:sn_tool/screens/TabHelp.dart';
import 'package:sn_tool/screens/TabMe.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: _title,
      home: MyStatefulWidget(),
      color: Color.fromARGB(255, 255, 255, 255),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.info), title: Text('淘新机')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.group_solid), title: Text('客服')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), title: Text('账户')),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return TabHome();
          case 1:
            return TabTxj();
          case 2:
            return TabHelp();
          case 3:
            return TabMe();
          default:
            return TabHome();
        }
      },
    );
  }
}
