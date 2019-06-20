import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sn_tool/util/http_util.dart';
import 'package:sn_tool/widgets/category_item.dart';
import 'package:sn_tool/widgets/tag_item.dart';

class TabHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabHomeState();
  }
}

class _TabHomeState extends State<TabHome> {
  var banner = [];
  var category = [];
  var tagList = [];

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
        tagList = tagGoodsJson['result'];
      });
    }
  }

  _genCategory() {
    return category
        .map((e) => CategoryItem(
            iconUrl: e['categoryIcoPath'], titleTxt: e['categoryName']))
        .toList();
  }

  @override
  void initState() {
    super.initState();
    this._loadData();
  }

  _buildBanner() {
    return SizedBox(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    print('bullllll');
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('淘新机'),
        ),
        child: Container(
          color: Theme.of(context).dividerColor,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              _buildBanner(),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _genCategory(),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: this.tagList.map((item) {
                  print(item['zmSpuDTOList'].runtimeType);
                  return TagItem(
                    name: item['tagName'],
//                            bannerImgUrl: item['banner'] ?? ['bannerImg'],
//                            bannerLinkUrl: item['banner'] ?? ['leaseChannelId'],
                    goodsList: item['zmSpuDTOList'],
                  );
                }).toList(),
              )
            ],
          ),
        ));
  }
}
