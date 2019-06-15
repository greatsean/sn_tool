import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sn_tool/util/http_util.dart';
import 'package:sn_tool/widgets/category_item.dart';

class TabHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabHomeState();
  }
}

class _TabHomeState extends State<TabHome> {
  var banner = [];
  var category = [];

  _loadData() async {
    var bannerJson = (await HttpUtil.get(
        '/lease/api/v1/goods/banner/list', {'channelId': 'SELF_APP'}));
    var catgoryJson = (await HttpUtil.get(
        '/lease/api/v1/goods/category/list', {'channelId': 'SELF_APP'}));
    var tagGoodsJson =
        (await HttpUtil.get('/lease/api/v1/goods/SELF/tags/spu/list'));
    print(bannerJson);
    print(catgoryJson);
    print(tagGoodsJson);
    if (bannerJson != null) {
      setState(() {
        banner = bannerJson['result']['top_position'];
        category = catgoryJson['result'];
      });
    }
  }

  _genCategory() {
    List<Widget> cateWidgets = [];
    category.forEach((e) {
      cateWidgets.add(CategoryItem(
          iconUrl: e['categoryIcoPath'], titleTxt: e['categoryName']));
    });

    return cateWidgets;
  }

  @override
  void initState() {
    super.initState();
    this._loadData();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context));

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('淘新机'),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Swiper(
                itemCount: banner.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    banner[index]['bannerImg'],
                    fit: BoxFit.fitWidth,
                  );
                },
                pagination: SwiperPagination(),
                autoplay: true,
                duration: 1000,
                autoplayDelay: 3000,
              ),
              width: MediaQuery.of(context).size.width,
              height: 174,
            ),
            SizedBox(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _genCategory(),
              ),
              width: MediaQuery.of(context).size.width,
              height: 174,
            ),
          ],
        ));
  }
}
