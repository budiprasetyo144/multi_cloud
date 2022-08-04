// import 'package:flutter/material.dart';

// class OurPartner extends StatefulWidget {
//   const OurPartner({Key? key}) : super(key: key);

//   @override
//   State<OurPartner> createState() => _OurPartnerState();
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             child: Text('Our Talent'),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// class _OurPartnerState extends State<OurPartner> {
//   //position , skill , level , industry, location

//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(238, 224, 224, 1),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 50,
//           ),
//           Center(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
//                 border: Border.all(color: Colors.black),
//               ),
//               width: 1200,
//               height: 600,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 18, 108, 178),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white),
//                       ),

//                       //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
//                     ),
//                     padding: EdgeInsets.only(top: 27, left: 35),
//                     height: 95,
//                     width: 1200,
//                     child: Text(
//                       'Our Partner',
//                       style: TextStyle(
//                           fontSize: 35,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: 2),
//                     ),
//                   ),
//                   Container(
//                     height: 503,
//                     child: Row(
//                       children: [
//                         // Expanded(
//                         //   child: views.elementAt(selectedIndex),
//                         // )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mcs_flutter/api/partner_api.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';

class OurpartnerDashboard extends StatefulWidget {
  const OurpartnerDashboard({Key? key}) : super(key: key);

  @override
  State<OurpartnerDashboard> createState() => _OurpartnerDashboardState();
}

class _OurpartnerDashboardState extends State<OurpartnerDashboard> {
  final formKey = GlobalKey<FormState>();
  String nm = '';
  String pt = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 2000,
      width: screenSize.width,
      padding: const EdgeInsets.only(left: 100, right: 100),
      color: const Color.fromRGBO(238, 224, 224, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  child: Text(
                    'Our Partner    ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Center(child: const Text('ADD NEW PARTNER')),
                          content: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              verticalDirection: VerticalDirection.down,
                              children: [
                                Container(
                                  width: 200,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      labelText: "Masukkan Nama",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    onChanged: (value) => pt = value,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  width: 200,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 7,
                                    decoration: InputDecoration(
                                      labelText: "Masukkan Keterangan",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    onChanged: (value) => nm = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              // onPressed: () {
                              //   if (nm.trim().isEmpty && nm == null) {
                              //     print('Nama Page Kosong');
                              //   } else if (pt.trim().isEmpty && pt == null) {
                              //     print('Isi page kosong');
                              //   }

                              //   print(nm + '\n' + pt);
                              //   PartnerApi().createPartner(nm, pt);
                              //   print('Data Tersimpan');
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const Dashboard(),
                              //     ),
                              //   );
                              onPressed: () {
                                Navigator.pop(context);

                                if (nm.isEmpty && pt.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Data Can\'t Be Empty')),
                                  );
                                } else if (pt.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Content Can\'t Be Empty')),
                                  );
                                } else if (nm.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Name Can\'t Be Empty')),
                                  );
                                } else {
                                  PartnerApi().createPartner(nm, pt).then(
                                    (isSuccess) {
                                      if (isSuccess) {
                                        setState(() {});
                                        Scaffold.of(this.context).showSnackBar(
                                            SnackBar(
                                                content: Text("Data success")));
                                      } else {
                                        Scaffold.of(this.context).showSnackBar(
                                            SnackBar(
                                                content:
                                                    Text("Data failed!!!")));
                                      }
                                    },
                                  );
                                }
                              },
                              child: const Text('save'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('Add New Partner'))
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {},
                  child: const Text("All (3)"),
                ),
                Spacer(
                  flex: 3,
                ),
                // const Text('All(4)',
                //     style: TextStyle(color: Color.fromARGB(255, 0, 0, 139))),

                SizedBox(
                  height: 40,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                //     Spacer(
                //       flex: 1,
                // ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF42A5F5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.black,
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                        child: const Text("Search Partner"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Spacer(
                flex: 6,
              ),
              Text("3 items"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: FutureBuilder<List<dynamic>>(
              future: PartnerApi().getPartner(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError ||
                    snapshot.data == null ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                return DataTable(
                  decoration: BoxDecoration(color: Colors.white),
                  columnSpacing: 150,
                  columns: const [
                    DataColumn(label: Text('Id')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Path')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Action')),
                  ],
                  rows: List.generate(
                    snapshot.data.length,
                    (index) {
                      var pgm = snapshot.data[index];
                      return DataRow(cells: [
                        DataCell(
                          Text(pgm['partnerId'].toString()),
                        ),
                        DataCell(
                          Text(pgm['filename']),
                        ),
                        DataCell(
                          Text(pgm['filepath']),
                        ),
                        DataCell(
                          Text(pgm['status']),
                        ),
                        DataCell(
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.black,
                              backgroundColor: Color.fromARGB(255, 245, 27, 27),
                              textStyle: const TextStyle(fontSize: 10),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Warning"),
                                    content: Text(
                                        "Are you sure want to delete data partner ${pgm['filename']}?"),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text("Yes"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          PartnerApi()
                                              .deletePartner(pgm['partnerId'])
                                              .then((isSuccess) {
                                            if (isSuccess) {
                                              setState(() {});
                                              Scaffold.of(this.context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Delete data success")));
                                            } else {
                                              Scaffold.of(this.context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Delete data failed")));
                                            }
                                          });
                                        },
                                      ),
                                      TextButton(
                                        child: Text("No"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text("Delete"),
                          ),
                        ),
                      ]);
                    },
                  ).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
