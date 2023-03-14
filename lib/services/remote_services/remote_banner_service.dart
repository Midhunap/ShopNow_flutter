import 'package:http/http.dart' as http;
import 'package:shop_now/consts/const.dart';

String baseUrl = 'http://192.168.197.212:1337'; //ipconfig

class RemoteBannerServices {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/banners';

  Future<dynamic> get() async {
    try {
      print('get called');
      var response = await client
          .get(Uri.parse('http://localhost:1337/api/banners?populate=image'));

      print(response.body);
    } catch (e) {
      print(e);
    }
  }
}
