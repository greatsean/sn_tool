import 'package:flutter/cupertino.dart';
import 'package:sn_tool/screens/AboutUs.dart';
import 'package:sn_tool/widgets/setting_item.dart';

class TabMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return CupertinoTabView(
//      builder: (context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('我的'),
      ),
      child: ListView(
        children: <Widget>[
          SettingItem(
            onPressed: () {
              print('lxh>>我的订单');
            },
            lable: '我的订单',
          ),
          SettingItem(
            onPressed: () {
              print('lxh>>我的优惠券');
            },
            lable: '我的优惠券',
          ),
          SettingItem(
            onPressed: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => AboutUs()));
            },
            lable: '租机攻略',
          ),
          SettingItem(
            onPressed: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => AboutUs()));
            },
            lable: '客服与帮助',
          )
        ],
      ),
    );
//      },
//    );
  }
}
