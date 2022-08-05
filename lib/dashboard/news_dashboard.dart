import 'package:flutter/material.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/widget/filter.dart';
import 'package:mcs_flutter/widget/dropdownbuttondates.dart';
import 'package:mcs_flutter/api/news_api.dart';

class NewsDashboard extends StatefulWidget {
  const NewsDashboard({Key? key}) : super(key: key);

  @override
  State<NewsDashboard> createState() => _NewsDashboardState();
}

class _NewsDashboardState extends State<NewsDashboard> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  final formKey = GlobalKey<FormState>();
  String title = '';
  String news = '';
  String images = '';

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
                  child: const Text("Post     ",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Center(child: const Text('Add News')),
                          content: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              verticalDirection: VerticalDirection.down,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                //IconButton(onPressed: (){}, icon: Icon(Icons.add_photo_alternate_outlined,size: 30,)),
                                Container(
                                  width: 230,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      labelText: "Masukkan Code Image",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    onChanged: (value) => images = value,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 230,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      labelText: "Masukkan Title",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    onChanged: (value) => title = value,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 230,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 7,
                                    decoration: InputDecoration(
                                      labelText: "Masukkan Keterangan News",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    onChanged: (value) => news = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                if (title.trim().isEmpty &&
                                    news == null &&
                                    images == null) {
                                  print('Title News Kosong');
                                } else if (news.trim().isEmpty &&
                                    title == null &&
                                    images == null) {
                                  print('Isi News kosong');
                                } else if (images.trim().isEmpty &&
                                    title == null &&
                                    news == null) {
                                  print('Images Kosong');
                                }
                                NewsApi().createNews(title, news, images);
                                print('Data Tersimpan');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ),
                                );
                              },
                              child: const Text('Save'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('Add News'))
              ],
            ),
          ),
          SizedBox(
              height: 50,
              child: Row(
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
                    flex: 2,
                  ),
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
                          child: const Text("Search Post"),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Row(
            children: [
              DropDownButtonDates(),
              Spacer(
                flex: 1,
              ),
              FilterButton(),
              Spacer(
                flex: 10,
              ),
              Text("3 items"),
            ],
          ),
          Container(
            child: FutureBuilder<List<dynamic>>(
              future: NewsApi().getNews(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError ||
                    snapshot.data == null ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                return DataTable(
                  decoration: BoxDecoration(color: Colors.white),
                  columnSpacing: 100,
                  columns: const [
                    DataColumn(label: Text('Id')),
                    DataColumn(label: Text('Title')),
                    DataColumn(label: Text('News')),
                    DataColumn(label: Text('Images')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Action')),
                  ],
                  rows: List.generate(
                    snapshot.data.length,
                    (index) {
                      var pgm = snapshot.data[index];
                      return DataRow(cells: [
                        DataCell(
                          Text(pgm['idpost'].toString()),
                        ),
                        DataCell(
                          Text(pgm['title']),
                        ),
                        DataCell(
                          Text(pgm['post']),
                        ),
                        DataCell(
                          Text(pgm['image']),
                        ),
                        DataCell(
                          Text(pgm['status']),
                        ),
                        DataCell(
                          Text('edit'),
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
