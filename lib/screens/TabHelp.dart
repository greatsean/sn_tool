
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TabHelp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('客服与帮助'),
      ),
      child: WebviewScaffold(
        url: 'https://mf-fat.wolaidai.com/txj-app/help',
      ),
    );
  }

}