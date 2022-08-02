import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:mcs_flutter/api/page_api.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';

class PagesDashboard extends StatefulWidget {
  const PagesDashboard({Key? key}) : super(key: key);

  @override
  State<PagesDashboard> createState() => _PagesDashboardState();
}

class _PagesDashboardState extends State<PagesDashboard> {

  final formKey = GlobalKey<FormState>();
  String nm = '';
  String pg = '';

  String allDates = 'All dates';
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

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
            color: Colors.white,
            height: 300,
            width: screenSize.width,
            padding: EdgeInsets.zero,
            child: DataTable2(
              columnSpacing: 30,
              dataRowHeight: 70,
              horizontalMargin: 10,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text('Title',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  size: ColumnSize.M,
                ),
                DataColumn(
                  label: Text('Author',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                DataColumn(
                  label: Text('Detail',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(
                      Container(
                        // padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              children: [
                                Image(image: AssetImage
                                  ('assets/icons/home.png'),
                                  height: 35,
                                  width: 35,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(height: 10,width: 10,),
                                    Text('     About',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 139)
                                      ),),
                                    Row(
                                      children: [
                                        // Text('Edit'),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('Edit',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('Remove',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('View',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                      )
                  ),
                  DataCell(Text('Admin',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 139)
                    ),
                  ),),
                  DataCell(Text('2022-06-18'),),
                ]),
                DataRow(cells: [
                  DataCell(
                      Container(
                        // padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              children: [
                                Image(image: AssetImage
                                  ('assets/icons/home.png'),
                                  height: 35,
                                  width: 35,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(height: 10,width: 10,),
                                    Text('     News',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 139)
                                      ),),
                                    Row(
                                      children: [
                                        // Text('Edit'),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('Edit',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('Remove',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('View',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                      )
                  ),
                  DataCell(Text('Admin',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 139)
                    ),
                  ),),
                  DataCell(Text('2022-06-18'),),
                ]),
                DataRow(cells: [
                  DataCell(
                      Container(
                        // padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              children: [
                                Image(image: AssetImage
                                  ('assets/icons/home.png'),
                                  height: 35,
                                  width: 35,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(height: 10,width: 10,),
                                    Text('     Contact',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 139)
                                      ),),
                                    Row(
                                      children: [
                                        // Text('Edit'),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('Edit',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('Remove',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>Dashboard(),
                                                )
                                            );
                                          },
                                          child: Text('View',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                      )
                  ),
                  DataCell(Text('Admin',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 139)
                    ),
                  ),),
                  DataCell(Text('2022-06-18'),),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}




