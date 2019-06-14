import 'package:flutter/cupertino.dart';

class TabTxj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('关于我们'),
      ),
      child: ListView(
        children: <Widget>[Image.asset('images/company_profile.png')],
      ),
    );
  }
}
