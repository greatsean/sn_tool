import 'package:flutter/cupertino.dart';

class CategoryItem extends StatelessWidget {
//    String iconUrl;
//    String titleTxt;
//
//
//  CategoryItem({Key key,String iconUrl,String titleTxt}):super(key:key) {
////    super(key: key);
//    this.iconUrl=iconUrl;
//    this.iconUrl=titleTxt;
//
//  }

  final String iconUrl;
  final String titleTxt;

  CategoryItem({Key key, this.iconUrl, this.titleTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
//      color: Color.fromARGB(255, 255, 0, 0),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Image.network(
            iconUrl,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
          Container(
            child: Text(titleTxt,style: TextStyle(fontSize: 11),textAlign: TextAlign.center),
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
