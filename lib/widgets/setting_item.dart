import 'package:flutter/cupertino.dart';

class SettingItem extends StatelessWidget {
  final String lable;
  final Function onPressed;

  SettingItem({@required this.lable, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(lable),
              Icon(CupertinoIcons.right_chevron),
            ],
          ),
        ));
  }
}
