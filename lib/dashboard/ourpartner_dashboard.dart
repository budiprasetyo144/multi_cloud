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
  int selectedIndex = 0;
  int id = 0;
  String selectname = '';
  String selectpath = '';
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPath = TextEditingController();

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
                  child: const Text(
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
                          title: const Center(child: Text('ADD NEW PARTNER')),
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
                                      hintStyle: const TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    onChanged: (value) => pt = value,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  width: 200,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 7,
                                    decoration: InputDecoration(
                                      labelText: "Masukkan Keterangan",
                                      hintStyle: const TextStyle(),
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
                                  createPartner(nm, pt).then(
                                    (isSuccess) {
                                      if (isSuccess) {
                                        setState(() {});
                                        Scaffold.of(this.context).showSnackBar(
                                            const SnackBar(
                                                content: Text("Data success")));
                                      } else {
                                        Scaffold.of(this.context).showSnackBar(
                                            const SnackBar(
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
                    child: const Text('Add New Partner'))
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
                const Spacer(
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
                          primary: Colors.white,
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
            children: const [
              Spacer(
                flex: 6,
              ),
              Text("3 items"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: FutureBuilder<List<dynamic>>(
              future: getPartner(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError ||
                    snapshot.data == null ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                return DataTable(
                  decoration: const BoxDecoration(color: Colors.white),
                  columnSpacing: 120,
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
                        // DataCell(
                        //   TextButton(
                        //     style: TextButton.styleFrom(
                        //       padding: const EdgeInsets.all(16.0),
                        //       primary: Colors.black,
                        //       backgroundColor: Color.fromARGB(255, 245, 27, 27),
                        //       textStyle: const TextStyle(fontSize: 15),
                        //     ),
                        //     onPressed: () {
                        //       showDialog(
                        //         context: context,
                        //         builder: (context) {
                        //           return AlertDialog(
                        //             title: Text("Warning"),
                        //             content: Text(
                        //                 "Are you sure want to delete data partner ${pgm['filename']}?"),
                        //             actions: <Widget>[
                        //               TextButton(
                        //                 child: Text("Yes"),
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                   PartnerApi()
                        //                       .deletePartner(pgm['partnerId'])
                        //                       .then((isSuccess) {
                        //                     if (isSuccess) {
                        //                       setState(() {});
                        //                       Scaffold.of(this.context)
                        //                           .showSnackBar(SnackBar(
                        //                               content: Text(
                        //                                   "Delete data success")));
                        //                     } else {
                        //                       Scaffold.of(this.context)
                        //                           .showSnackBar(SnackBar(
                        //                               content: Text(
                        //                                   "Delete data failed")));
                        //                     }
                        //                   });
                        //                 },
                        //               ),
                        //               TextButton(
                        //                 child: Text("No"),
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //               ),
                        //             ],
                        //           );
                        //         },
                        //       );
                        //     },
                        //     child: const Text("Delete"),
                        //   ),
                        // ),
                        DataCell(
                          Row(
                            children: [
                              ElevatedButton(
                                // style: TextButton.styleFrom(
                                //   padding: const EdgeInsets.all(16.0),
                                //   primary: Colors.black,
                                //   backgroundColor:
                                //   Color.fromARGB(255, 22, 197, 197),
                                //   textStyle: const TextStyle(fontSize: 15),
                                // ),
                                onPressed: () {
                                  var pgm = snapshot.data[index];
                                  selectedIndex = index;
                                  id = pgm['partnerId'];
                                  selectname = pgm['filename'];
                                  selectpath = pgm['filepath'];
                                  print(selectedIndex);
                                  print(pgm['partnerId']);
                                  print(selectname);

                                  _controllerPath.clear();
                                  // _controllerId.clear();
                                  _controllerName.clear();
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Center(
                                          child: Text('Update Partner')),
                                      content: Form(
                                        key: formKey,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          children: [
                                            // Container(
                                            //   width: 200,
                                            //   child: TextFormField(
                                            //     controller: _controllerId,
                                            //     textAlign: TextAlign.start,
                                            //     decoration: InputDecoration(
                                            //       labelText: "Masukkan ID News",
                                            //       hintStyle: TextStyle(),
                                            //       border: OutlineInputBorder(
                                            //           borderRadius:
                                            //           BorderRadius
                                            //               .circular(5.0)),
                                            //     ),
                                            //
                                            //     onChanged: (value) =>
                                            //     id = int.parse(value),
                                            //   ),
                                            // ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              'Data Harus di Edit*',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.red),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Center(
                                              child: Container(
                                                width: 200,
                                                child: TextFormField(
                                                  //controller: _controllerTitle,

                                                  textAlign: TextAlign.start,
                                                  initialValue: selectname,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Masukkan Name Partner Baru',
                                                    //labelStyle: TextStyle(),

                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0)),
                                                  ),

                                                  onChanged: (value) =>
                                                      nm = value,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 40,
                                            ),
                                            Center(
                                              child: Container(
                                                width: 200,
                                                child: TextFormField(
                                                  //controller: _controllerPartner,
                                                  textAlign: TextAlign.start,
                                                  initialValue: selectpath,
                                                  maxLines: 7,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        "Masukkan Keterangan Baru",
                                                    hintStyle: const TextStyle(),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                  ),
                                                  onChanged: (value) =>
                                                      pt = value,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            padding: const EdgeInsets.all(16.0),
                                            primary: Colors.black,
                                            backgroundColor: const Color.fromARGB(
                                                255, 16, 199, 71),
                                            textStyle:
                                                const TextStyle(fontSize: 15),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);

                                            if (nm.isEmpty && pt.isEmpty) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Data Must Be Edited')),
                                              );
                                            } else if (pt.isEmpty) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Content Must Be Edited')),
                                              );
                                            } else if (nm.isEmpty) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Name Must Be Edited')),
                                              );
                                            } else {
                                              updatePartner(id, nm, pt)
                                                  .then(
                                                (isSuccess) {
                                                  if (isSuccess) {
                                                    setState(() {});
                                                    Scaffold.of(this.context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        content: Text(
                                                            "Data success"),
                                                      ),
                                                    );
                                                  } else {
                                                    Scaffold.of(this.context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        content: Text(
                                                            "Data failed!!!"),
                                                      ),
                                                    );
                                                  }
                                                },
                                              );
                                            }
                                          },
                                          child: const Text('Update'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: const Text('Edit Partner'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(16.0),
                                  primary: Colors.white,
                                  backgroundColor:
                                      const Color.fromARGB(255, 245, 27, 27),
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Warning"),
                                        content: Text(
                                            "Are you sure want to delete data partner ${pgm['title']}?"),
                                        actions: <Widget>[
                                          TextButton(
                                            child: const Text("Yes"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              deletePartner(
                                                      pgm['partnerId'])
                                                  .then((isSuccess) {
                                                if (isSuccess) {
                                                  setState(() {});
                                                  Scaffold.of(this.context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              "Delete data success")));
                                                } else {
                                                  Scaffold.of(this.context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              "Delete data failed")));
                                                }
                                              });
                                            },
                                          ),
                                          TextButton(
                                            child: const Text("No"),
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
                            ],
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
