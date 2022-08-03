import 'dart:convert';

import 'package:http/http.dart' as http;

class PartnerApi{
  Future<bool> createPartner(title,image) async {
    final response = await http.post(
        Uri.parse('http://10.107.250.246:8081/partner/savePost'),
        body: jsonEncode({
          "title": title,
          "image": image
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
  Future<bool> updatePartner(id,title,image) async {
    final response = await http.post(
        Uri.parse('http://10.107.250.246:8081/partner/savePost'),
        body: jsonEncode({
          "idpost": id,
          "title": title,
          "image": image
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
  Future<List<dynamic>> getPartner() async{
    var response = await http.get(
        Uri.parse('http://localhost:8082/partner/getAllPostByIdRole'));
    return jsonDecode(response.body)['data'];
  }
}