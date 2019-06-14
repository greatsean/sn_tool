import 'package:flutter/cupertino.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: '关于我们',
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              onPressed: () {
                Navigator.pop(context);
                print('lxh>>返回');
              },
              child: Text('返回'),
            )
          ],
        ));
  }
}
