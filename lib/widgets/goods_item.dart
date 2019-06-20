import 'package:flutter/widgets.dart';

class GoodsItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String desc;
  final String price;

  GoodsItem({Key key, this.imgUrl, this.name, this.desc, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width / 2 - 30 - 10;
    return Container(
      padding: EdgeInsets.only(bottom: 0),
      child: Column(
        children: <Widget>[
          Image.network(
            this.imgUrl,
            width: itemWidth,
            height: itemWidth,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Container(
              child: Text(
                this.name,
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.only(bottom: 0),
            ),
          ),
          Expanded(
            child: Text(this.desc,
                style: TextStyle(fontSize: 13), textAlign: TextAlign.center),
          ),
//          Text(this.name),
//          Text(this.desc),
//        Text(this.price),
        ],
      ),
    );
  }
}
