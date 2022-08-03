import 'dart:convert';

import 'package:http/http.dart' as http;

class PageApi{

  Future<List<dynamic>> getPage() async {
    var response = await http.get(
        Uri.parse('http://10.107.142.52:8082/page/getAllPageByIdRole'));
    return jsonDecode(response.body)['data'];
  }
  Future<bool> createPage(name, page) async {
    final response = await http.post(
        Uri.parse('http://10.107.142.52:8081/page/savePage'),
        body: jsonEncode({
          "title": name,
          "page": page
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
}