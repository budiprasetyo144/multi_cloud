import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:mcs_flutter/api/page_api.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/model/page_model.dart';

class PagesDashboard extends StatefulWidget {
  const PagesDashboard({Key? key}) : super(key: key);

  @override
  State<PagesDashboard> createState() => _PagesDashboardState();
}

class _PagesDashboardState extends State<PagesDashboard> {

  final formKey = GlobalKey<FormState>();
  String nm = '';
  String pg = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 2000,
      width: screenSize.width,
      padding: const EdgeInsets.only(left: 100,right: 100),
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
                ElevatedButton(onPressed: (){
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
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                                onChanged: (value) => nm = value,
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: 200,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                maxLines: 7,
                                decoration: InputDecoration(
                                  labelText: "Masukkan Keterangan",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                                onChanged: (value) => pg = value,
                              ),
                            ),

                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: (){
                            if (nm.trim().isEmpty && nm == null){
                              print('Nama Page Kosong');
                            }else if(pg.trim().isEmpty && pg == null){
                              print('Isi page kosong');
                            }
                            PageApi().createPage(nm,pg);
                            print('Data Tersimpan');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Dashboard(),
                              ),
                            );
                          },
                          child: const Text('save'),
                        ),
                      ],
                    ),
                  );
                }, child: Text('Add New Pages'))
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
                        child: const Text("Search Pages"),
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
          SizedBox(height: 10,),
          Container(
            child: FutureBuilder<List<dynamic>>(
              future: PageApi().getPage(),
              builder: (BuildContext context,AsyncSnapshot snapshot) {
                if (snapshot.hasError ||
                    snapshot.data == null ||
                    snapshot.connectionState == ConnectionState.waiting
                ) {
                  return const CircularProgressIndicator();
                }
                return DataTable(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  columnSpacing: 300,
                  columns: const [
                    DataColumn(label: Text('Id')),
                    DataColumn(label: Text('Title')),
                    DataColumn(label: Text('Page')),
                    DataColumn(label: Text('Status')),
                  ],
                  rows: List.generate(snapshot.data.length, (index) {
                    var pgm = snapshot.data[index];
                    return DataRow(cells: [
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
                    ]);
                  },
                  )
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}