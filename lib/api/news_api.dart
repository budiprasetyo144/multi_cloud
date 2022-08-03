import 'dart:convert';

import 'package:http/http.dart' as http;

class NewsApi{

  Future<List<dynamic>> getNews() async {
    var response = await http.get(
        Uri.parse('http://10.3.4.231:8082/post/getAllPostByIdRole'));
    return jsonDecode(response.body)['data'];
  }
  Future<bool> createNews(name, news, image) async {
    final response = await http.post(
        Uri.parse('http://10.3.4.231:8081/post/savePost'),
        body: jsonEncode({
          "title": name,
          "post": news,
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
}