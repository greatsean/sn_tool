import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TabHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) =>
//        CupertinoPageScaffold(
//        navigationBar: CupertinoNavigationBar(
//          middle: Text('客服与帮助'),
//        ),
//        child:

          WebviewScaffold(
        url: 'https://mf-fat.wolaidai.com/txj-app/help',
        appBar: CupertinoNavigationBar(
          middle: Text('客服与帮助'),
          previousPageTitle: '首页',
        ),
scrollBar: false,
withZoom: false,
//            bottomNavigationBar: CupertinoTabBar(items: [
//              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
//              BottomNavigationBarItem(
//                  icon: Icon(CupertinoIcons.info), title: Text('淘新机')),
//              BottomNavigationBarItem(
//                  icon: Icon(CupertinoIcons.group_solid), title: Text('客服')),
//              BottomNavigationBarItem(
//                  icon: Icon(CupertinoIcons.profile_circled), title: Text('账户')),
//            ]),
      ),
//      ),
    );
  }
}
