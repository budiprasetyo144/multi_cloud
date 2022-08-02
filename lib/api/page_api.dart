import 'dart:convert';

import 'package:http/http.dart' as http;

class PageApi{
  Future<bool> createPage(name, page) async {
    final response = await http.post(
        Uri.parse('http://10.107.250.246:8081/page/savePage'),
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