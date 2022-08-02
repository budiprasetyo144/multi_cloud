// class PageModel {
//   String status;
//   int code;
//   String message;
//   List<Data> data;
//
//   PageModel({
//     required this.status,
//     required this.code,
//     required this.message,
//     required this.data});
//
//   factory PageModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     code = json['code'];
//     message = json['message'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['code'] = this.code;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Data {
//   int? idpage;
//   String? title;
//   String? page;
//   String? status;
//   String? idrole;
//
//   Data({this.idpage, this.title, this.page, this.status, this.idrole});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     idpage = json['idpage'];
//     title = json['title'];
//     page = json['page'];
//     status = json['status'];
//     idrole = json['idrole'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['idpage'] = this.idpage;
//     data['title'] = this.title;
//     data['page'] = this.page;
//     data['status'] = this.status;
//     data['idrole'] = this.idrole;
//     return data;
//   }
// }
