import 'package:flutter_application/model/activity_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static Future<ActivityModel> getActivity() async {
    var response =
        await client.get(Uri.parse('https://www.boredapi.com/api/activity/'));
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return activityModelFromJson(jsonString);
    } else {
      print("ERROR MESSAGE SHOWED");
      return null;
      //show erro message
    }
  }
}
/*static var client = http.Client();
  ImageModel imgModel;

  static Future<Map<String, dynamic>> postImage(var imgUrl) async {
    var response = await client.put(
        Uri.parse('https://face-detection6.p.rapidapi.com/img/face-age-gender'),
        headers: <String, String>{
          "content-type": "application/json",
          "x-rapidapi-host": "face-detection6.p.rapidapi.com",
          'x-rapidapi-key':
              '3fcdc8eaf3mshaf0e800b65ad7b9p1ae44bjsnc0806d4efc53',
        });
    print("STATU KODU");
    print(response.statusCode);
    if (response.statusCode == 200) {
      ImageModel().url = imgUrl;
      ImageModel().accuracyBoost = 3;
      return ImageModel().toJson();
    } else {
      print("ERROR MESSAGE SHOWED");
      return null;
      //show erro message
    }
  }*/
