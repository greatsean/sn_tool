import 'dart:io';
import 'dart:convert';

//http操作工具类
abstract class HttpUtil {
  static const int ENV_FAT = 1;
  static const int ENV_PRODUTION = 2;

  static var client = HttpClient();
  static int currentEnv = ENV_FAT;

  static String getAuthority() {
    switch (currentEnv) {
      case ENV_FAT:
        return 'mf-fat.wolaidai.com';
      case ENV_PRODUTION:
        return 'mf.wolaidai.com';
      default:
        return 'mf.wolaidai.com';
    }
  }

  static dynamic get(String path, [Map<String, String> queryParams]) async {
//    var client = new HttpClient();
//    var uri = new Uri.https('mf-fat.wolaidai.com',
//        '/lease/api/v1/goods/banner/list', {'channelId': 'SELF'});
//    var req = await client.getUrl(uri);
////    var req = await client.get('https://mf-fat.wolaidai.com',80,'/lease/api/v1/goods/banner/list?channelId=SELF');
//    var resp = await req.close();
//    var respBody = await resp.transform(utf8.decoder).join();
//    var json = await jsonDecode(respBody)['result']['top_position'];
//    ['result']['top_position']
//    var json =  HttpUtil.get('/lease/api/v1/goods/banner/list', {'channelId': 'SELF'})['result']['top_position'];

    var url =  Uri.https(getAuthority(), path, queryParams);
    var req = await client.getUrl(url);
    var resp = await req.close();
    var respBody = await resp.transform(utf8.decoder).join();
    var mapData =  jsonDecode(respBody);
//    print(mapData);
    return mapData;
  }
}
