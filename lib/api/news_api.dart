import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> createNews(title, news, image) async {
  final response = await http.post(
      Uri.parse('http://10.3.4.231:8081/post/savePost'),
      body: jsonEncode({"title": title, "post": news, "image": image}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<bool> updateNews(id, title, news) async {
  final response = await http.post(
      Uri.parse('http://10.3.4.231:8081/post/savePost'),
      body: jsonEncode({"idpost": id, "title": title, "post": news}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<List<dynamic>> getNews() async {
  var response = await http
      .get(Uri.parse('http://10.3.4.231:8082/post/getAllPostByIdRole'));
  return jsonDecode(response.body)['data'];
}

Future<bool> deleteNews(id) async {
  final response = await http.delete(
    Uri.parse('http://10.3.4.231:8081/post/deletePost/$id'),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
