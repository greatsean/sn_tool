import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('淘新机'),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              child: FutureBuilder(
                  builder: (context, a) => Swiper(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.network(
                            "http://via.placeholder.com/350x150",
                            fit: BoxFit.fill,
                          );
                        },
                        pagination: SwiperPagination(),
                        control: SwiperControl(),
                      )),
              width: 375,
              height: 300,
            ),
            Expanded(
              child: Text('ddd'),
              flex: 1,
            ),
          ],
        ));
  }
}
