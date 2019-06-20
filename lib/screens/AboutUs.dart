import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
//          previousPageTitle: '关于我们',
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('jkfjsadklfjsdklfjkl')
//            CupertinoButton(
//              onPressed: () {
//                Navigator.pop(context);
//                print('lxh>>返回');
//              },
//              child: Text('返回'),
//            )
          ],
        ));
  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('关于我们'),
//      ),
//      body: ListView.separated(
//          itemBuilder: (ctx, i) => ListTile(
//                title: Text('版本号：1.0.0'),
////                trailing: Icon(Icons.arrow_forward_ios),
//                onTap: () {
//                  Fluttertoast.showToast(
//                      msg: '无版本',
//                      toastLength: Toast.LENGTH_SHORT,
//                      gravity: ToastGravity.BOTTOM,
//                      timeInSecForIos: 1);
//                },
//              ),
//          separatorBuilder: (ctx, i) => ListTile(),
//          itemCount: 1),
//    );
//  }
}
