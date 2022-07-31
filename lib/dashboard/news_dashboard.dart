import 'package:flutter/material.dart';
import 'package:mcs_flutter/widget/filter.dart';
import 'package:mcs_flutter/widget/dropdownbuttondates.dart';

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
                ElevatedButton(onPressed: (){}, child: Text('Add New News'))
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
          Expanded(
            child: Container(
              color: Colors.white,
              height: screenSize.height * 0.5,
              width: screenSize.width,
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  DataTable(
                      columnSpacing: 30,
                      dataRowHeight: 70,
                      horizontalMargin: 10,
                      columns: [
                        DataColumn(
                            label: Checkbox(
                                value: value,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                })),
                        const DataColumn(
                            label: Text(
                              'Title',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        const DataColumn(
                            label: Text(
                              'Author',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        const DataColumn(
                            label: Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value1,
                              onChanged: (bool? value) {
                                setState(() {
                                  value1 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Books Recomendation by Senior Developer',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      const SizedBox(height: 10),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-06-18')),
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value2,
                              onChanged: (bool? value) {
                                setState(() {
                                  value2 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Welcome Bootcamp Batch 4',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-18')),
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value3,
                              onChanged: (bool? value) {
                                setState(() {
                                  value3 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Hello World!',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-17')),
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value4,
                              onChanged: (bool? value) {
                                setState(() {
                                  value4 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Why We Are Here?',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(height: 20, width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(height: 20, width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(height: 20, width: 20),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-18'))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value2,
                              onChanged: (bool? value) {
                                setState(() {
                                  value2 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Welcome Bootcamp Batch 4',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-18')),
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value2,
                              onChanged: (bool? value) {
                                setState(() {
                                  value2 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Welcome Bootcamp Batch 4',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-18')),
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value2,
                              onChanged: (bool? value) {
                                setState(() {
                                  value2 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Welcome Bootcamp Batch 4',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-18')),
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                              value: value2,
                              onChanged: (bool? value) {
                                setState(() {
                                  value2 = value!;
                                });
                              })),
                          DataCell(Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage('assets/icons/home.png'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    '    Welcome Bootcamp Batch 4',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Remove'),
                                      ),
                                      SizedBox(width: 20),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue[900],
                                          textStyle:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {},
                                        child: const Text('View'),
                                      ),
                                      SizedBox(width: 20)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          const DataCell(Text('Admin')),
                          const DataCell(Text('2022-07-18')),
                        ])
                      ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
