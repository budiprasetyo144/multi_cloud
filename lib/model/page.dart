import 'dart:convert';

class Pages {
  int id;
  String name;
  String page;

  Pages({this.id = 0, required this.name, required this.page});

  factory Pages.fromJson(Map<String, dynamic> map) {
    return Pages(id: map["id"], name: map["name"], page: map["page"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "page": page};
  }

  @override
  String toString() {
    return 'Pages{id: $id, name: $name, page: $page}';
  }
}

List<Pages> pageFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Pages>.from(data.map((item) => Pages.fromJson(item)));
}

String pageToJson(Pages data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
