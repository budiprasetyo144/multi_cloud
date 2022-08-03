// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:mcs_flutter/model/partner_model.dart';
//
// class PartnerApi{
//
//   Future<List<dynamic>> getPartner() async {
//     var response = await http.get(
//         Uri.parse('http://10.107.250.246:8082/page/getAllPartnerByIdRole'));
//     return jsonDecode(response.body)['data'];
//   }
//   Future<bool> createPartner(name, partner) async {
//     final response = await http.post(
//         Uri.parse('http://10.107.250.246:8081/partner/savePartner'),
//         body: jsonEncode({
//           "title": name,
//           "partner": partner,
//         }),
//         headers: {
//           'Content-type': 'application/json; charset=UTF-8',
//         }
//     );
//     if (response.statusCode == 200){
//       return true;
//     } else {
//       return false;
//     }
//   }
// }