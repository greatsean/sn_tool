import 'package:flutter/cupertino.dart';

class CategoryItem extends StatelessWidget {
  final String iconUrl;
  final String titleTxt;

  CategoryItem({this.iconUrl, this.titleTxt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Image.network(iconUrl), Text(titleTxt)],
    );
  }

}