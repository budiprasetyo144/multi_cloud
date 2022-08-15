import 'package:flutter/material.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
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
  int id = 0;
  String selecttitle ='';
  String selectnews ='';

  int selectedIndex = 0;


  TextEditingController _controllerTitle = TextEditingController();
  TextEditingController _controllerNews = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
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
                              title: Center(child: Text('Add News')),
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
                                    createNews(title, news, images);
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
                        child: Text('Add News')),
                    SizedBox(width: 20,),

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
                        child: const Text("3 Items"),
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
                              child: const Text("Search News"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                child: FutureBuilder<List<dynamic>>(
                  future: getNews(),
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
                                        id = pgm['idpost'];
                                        selecttitle = pgm['title'];
                                        selectnews = pgm['post'];
                                        print(selectedIndex);
                                        print(pgm['idpost']);
                                        print(selecttitle);

                                       _controllerNews.clear();
                                      // _controllerId.clear();
                                       _controllerTitle.clear();
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                              title: Center(
                                                  child: const Text('Update News')),
                                              content: Form(
                                                key: formKey,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                    SizedBox(height: 10,),
                                                    const Text('Data Harus di Edit*',style: TextStyle(fontSize: 13,color: Colors.red),),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Center(
                                                      child: Container(
                                                        width: 200,
                                                        child: TextFormField(

                                                          //controller: _controllerTitle,

                                                          textAlign: TextAlign.start,
                                                          initialValue: selecttitle,
                                                          decoration: InputDecoration(

                                                            labelText: 'Masukkan Title News Baru',
                                                            //labelStyle: TextStyle(),

                                                            border: OutlineInputBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(5.0)),
                                                          ),

                                                          onChanged: (value) =>
                                                          title = value,

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
                                                          //controller: _controllerNews,
                                                          textAlign: TextAlign.start,
                                                          initialValue: selectnews,
                                                          maxLines: 7,
                                                          decoration: InputDecoration(
                                                            labelText:
                                                            "Masukkan Keterangan Baru",
                                                            hintStyle: TextStyle(),
                                                            border: OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  5.0),
                                                            ),
                                                          ),
                                                          onChanged: (value) =>
                                                          news = value,
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

                                                    if (title.isEmpty && news.isEmpty) {
                                                      ScaffoldMessenger.of(context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Data Must Be Edited')),
                                                      );
                                                    } else if (news.isEmpty) {
                                                      ScaffoldMessenger.of(context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Content Must Be Edited')),
                                                      );
                                                    } else if (title.isEmpty) {
                                                      ScaffoldMessenger.of(context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Name Must Be Edited')),
                                                      );
                                                    } else {
                                                      updateNews(id,title,news)
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
                                    child: Text('Edit News'),
                                  ),
                                  SizedBox(width: 10,),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      backgroundColor: Color.fromARGB(255, 245, 27, 27),
                                      textStyle: const TextStyle(fontSize: 15),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Warning"),
                                            content: Text(
                                                "Are you sure want to delete data news ${pgm['title']}?"),
                                            actions: <Widget>[
                                              TextButton(
                                                child: Text("Yes"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  deleteNews(pgm['idpost'])
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
                          ]);
                        },
                      ).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
