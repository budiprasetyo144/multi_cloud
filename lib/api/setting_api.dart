import 'dart:convert';

import 'package:http/http.dart' as http;

class SettingApi{
  Future<bool> createSetting(im, tt, tl, em, no) async {
    final response = await http.post(
      Uri.parse('http://10.107.224.95:8081/setting/saveSetting'),
      body: jsonEncode({
        "image": im,
        "title": tt,
        "tagline": tl,
        "email": em,
        "no": no
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      }
    );
    if (response.statusCode == 200){
      return true;
    } else {
      return false;
    }
  }
  Future<bool> updateSetting(id,image,name, title, tagline, email, no) async {
    final response = await http.put(
        Uri.parse('http://10.107.224.95:8081/setting/updateSetting'),
        body: jsonEncode({
          "idsetting": id,
          "image": image,
          "name": name,
          "title": title,
          "tagline": tagline,
          "email": email,
          "no": no,
          "idrole": "R001"
        }),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        }
    );
    if (response.statusCode == 200){
      return true;
    } else {
      return false;
    }
  }
  Future<List<dynamic>> getSetting() async{
    var response = await http.get(
        Uri.parse('http://10.107.224.95:8082/setting/getAllSettingByIdRole'));
    return jsonDecode(response.body)['data'];
  }
}