import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class PageApi {
  Future<List<dynamic>> getPage() async {
    var response = await http
        .get(Uri.parse('http://10.107.165.148:8082/page/getAllPageByIdRole'));
    return jsonDecode(response.body)['data'];
  }

  Future<bool> createPage(name, page) async {
    final response = await http.post(
        Uri.parse('http://10.107.165.148:8081/page/savePage'),
        body: jsonEncode({"title": name, "page": page}),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updatePage(id, name, page) async {
    final response = await http.put(
      Uri.parse('http://10.107.165.148:8081/page/savePage'),
      body: jsonEncode({"idpage": id,"title": name, "page": page}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> deletePage(id) async {
    final response = await http.delete(
      Uri.parse('http://10.107.165.148:8081/page/deletePage/$id'),
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
}
