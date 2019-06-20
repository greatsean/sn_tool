import 'package:flutter/cupertino.dart';
import 'package:sn_tool/screens/AboutUs.dart';
import 'package:sn_tool/widgets/setting_item.dart';
import 'package:flutter/material.dart';

class TabMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [
      {
        'lbl': '我的订单',
        'clk': () {},
      },
      {
        'lbl': '我的优惠券',
        'clk': () {},
      },
      {
        'lbl': '租机攻略',
        'clk': () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (BuildContext ctx) => AboutUs()));
        },
      },
      {
        'lbl': '客服与帮助',
        'clk': () {},
      },
    ];
//    return CupertinoTabView(
//      builder: (context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('我的'),
        trailing: GestureDetector(
          child: Icon(CupertinoIcons.settings),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext ctx) => AboutUs()));
          },
        ),
      ),
      child: ListView.separated(
        itemCount: data.length,
        itemBuilder: (ctx, index) => SettingItem(
              onPressed: data[index]['clk'],
              lable: data[index]['lbl'],
            ),
        separatorBuilder: (ctx, index) => Divider(),
      ),
    );
//      },
//    );
  }
}
