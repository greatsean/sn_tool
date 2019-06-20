import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sn_tool/model/goods.dart';
import 'goods_item.dart';

class TagItem extends StatelessWidget {
  final String name;
  final String bannerImgUrl;
  final String bannerLinkUrl;
  final goodsList;

  TagItem(
      {Key key,
      this.name,
      this.bannerImgUrl,
      this.bannerLinkUrl,
      this.goodsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      margin: EdgeInsets.only(top: 6.5),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: <Widget>[
                Text(
                  this.name,
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: <Widget>[
                    Text('更多',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xffbdcdda))),
                    Icon(CupertinoIcons.right_chevron)
                  ],
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Divider(),
          bannerImgUrl != null ? Image.network(bannerImgUrl) : Container(),
          Container(
            child: GridView.count(
              physics: ScrollPhysics(),
              crossAxisCount: 2,
//          children: goodsList
//              .map((item) => GoodsItem(
//                    imgUrl: item['primaryImagePath'],
//                    name: item['spuName'],
//                    desc: item['spuBrief'],
////                    price: double.,
//                  ))
//              .toList(),
              children: buildGoodsUi(),
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }

  buildGoodsUi() {
    List<Widget> datas = [];
    goodsList.forEach((e) {
      datas.add(GoodsItem(
        imgUrl: e['primaryImagePath'],
        name: e['spuName'],
        desc: e['spuBrief'],
//                    price: double.,
      ));
    });

    return datas;
  }
}
