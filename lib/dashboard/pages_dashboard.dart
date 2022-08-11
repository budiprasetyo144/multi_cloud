import 'package:flutter/material.dart';
import 'package:mcs_flutter/api/page_api.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/model/page.dart';

class PagesDashboard extends StatefulWidget {
  const PagesDashboard({Key? key}) : super(key: key);

  @override
  State<PagesDashboard> createState() => _PagesDashboardState();
}

class _PagesDashboardState extends State<PagesDashboard> {
  final formKey = GlobalKey<FormState>();

  int id = 0;
  String nm = '';
  String pg = '';
  String selectname = '';
  String selectpage = '';

  int selectedIndex = 0;

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPage = TextEditingController();

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
                    'Pages    ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Center(child: const Text('ADD NEW PAGES')),
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
                                  onChanged: (value) => nm = value,
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
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                  onChanged: (value) => pg = value,
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
                              backgroundColor: Color.fromARGB(255, 16, 199, 71),
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.pop(context);

                              if (nm.isEmpty && pg.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Data Can\'t Be Empty')),
                                );
                              } else if (pg.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Content Can\'t Be Empty')),
                                );
                              } else if (nm.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Name Can\'t Be Empty')),
                                );
                              } else {
                                createPage(nm, pg).then(
                                  (isSuccess) {
                                    if (isSuccess) {
                                      setState(() {});
                                      Scaffold.of(this.context).showSnackBar(
                                          SnackBar(
                                              content: Text("Data success")));
                                    } else {
                                      Scaffold.of(this.context).showSnackBar(
                                          SnackBar(
                                              content: Text("Data failed!!!")));
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
                  child: Text('Add New Pages'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: FutureBuilder<List<dynamic>>(
              future: getPage(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError ||
                    snapshot.data == null ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                return DataTable(
                  decoration: BoxDecoration(color: Colors.white),
                  columnSpacing: 130,
                  columns: const [
                    DataColumn(label: Text('Id')),
                    DataColumn(label: Text('Title')),
                    DataColumn(label: Text('Page')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Action')),
                  ],
                  rows: List.generate(
                    snapshot.data.length,
                    (index) {
                      var pgm = snapshot.data[index];
                      return DataRow(
                        cells: [
                          DataCell(
                            Text(pgm['idpage'].toString()),
                          ),
                          DataCell(
                            Text(pgm['title']),
                          ),
                          DataCell(
                            Text(pgm['page']),
                          ),
                          DataCell(
                            Text(pgm['status']),
                          ),
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
                                    id = pgm['idpage'];
                                    selectname = pgm['title'];
                                    selectpage = pgm['page'];
                                    print(selectedIndex);
                                    print(pgm['idpage']);
                                    print(selectname);

                                    _controllerName.clear();
                                    // _controllerId.clear();
                                    _controllerPage.clear();
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Center(
                                            child: const Text('Update Pages')),
                                        content: Form(
                                          key: formKey,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Data Harus di Edit*',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.red),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 200,
                                                  child: TextFormField(
                                                    //controller: _controllerName,

                                                    textAlign: TextAlign.start,
                                                    initialValue: selectname,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Masukkan Nama Pages Baru',
                                                      //labelStyle: TextStyle(),

                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0)),
                                                    ),

                                                    onChanged: (value) =>
                                                        nm = value,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 200,
                                                  child: TextFormField(
                                                    //controller: _controllerPage,
                                                    textAlign: TextAlign.start,
                                                    initialValue: selectpage,
                                                    maxLines: 7,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          "Masukkan Keterangan",
                                                      hintStyle: TextStyle(),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                    ),
                                                    onChanged: (value) =>
                                                        pg = value,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              primary: Colors.black,
                                              backgroundColor: Color.fromARGB(
                                                  255, 16, 199, 71),
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);

                                              if (nm.isEmpty && pg.isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Data Can\'t Be Empty')),
                                                );
                                              } else if (pg.isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Content Can\'t Be Empty')),
                                                );
                                              } else if (nm.isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Name Can\'t Be Empty')),
                                                );
                                              } else {
                                                updatePage(id, nm, pg)
                                                    .then(
                                                  (isSuccess) {
                                                    if (isSuccess) {
                                                      setState(() {});
                                                      Scaffold.of(this.context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                              "Data success"),
                                                        ),
                                                      );
                                                    } else {
                                                      Scaffold.of(this.context)
                                                          .showSnackBar(
                                                        SnackBar(
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
                                  child: Text('Edit Page'),
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(16.0),
                                    primary: Colors.white,
                                    backgroundColor:
                                        Color.fromARGB(255, 245, 27, 27),
                                    textStyle: const TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Warning"),
                                          content: Text(
                                              "Are you sure want to delete data page ${pgm['title']}?"),
                                          actions: <Widget>[
                                            TextButton(
                                              child: Text("Yes"),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                deletePage(pgm['idpage'])
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
                              ],
                            ),
                          ),
                        ],
                      );
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
