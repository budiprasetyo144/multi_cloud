import 'dart:convert';

import 'package:http/http.dart' as http;

class PartnerApi {
  Future<bool> createPartner(image, name) async {
    final response = await http.post(
        Uri.parse('http://10.107.122.152:8081/partner/savePartner'),
        body: jsonEncode({"filename": name, "filepath": image}),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updatePartner(id, name, image) async {
    final response = await http.put(
        Uri.parse('http://10.107.122.152:8081/partner/savePartner'),
        body: jsonEncode(
            {"idpartner": id, "file_name": name, "file_path": image}),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<dynamic>> getPartner() async {
    var response = await http
        .get(Uri.parse('http://10.107.122.152:8082/partner/getAllPartner'));
    return jsonDecode(response.body)['data'];
  }
}
