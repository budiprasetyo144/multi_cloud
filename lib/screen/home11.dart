
import 'package:flutter/material.dart';

import 'package:mcs_flutter/widget/expansion.dart';


// final List<String> items = [
//   '- Retail',
//   '- Consumer packaged goods',
// ];
// String? selectedValue;

class Home11 extends StatefulWidget {
  const Home11({Key? key}) : super(key: key);

  @override
  State<Home11> createState() => _Home11State();
}

class _Home11State extends State<Home11> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: 700,
      width: screenSize.width,
      color: Colors.white,

      child: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: (
            Text("VARIOUS INDUSTRY AND SECTORS",
              style: TextStyle(
                fontSize: 45,
                  color: Color(0xff1e5ea8),
                fontWeight: FontWeight.bold),
            )
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: (
            Text("Masing-masing Industri mempunyai kebutuhan spesifik nya, kami siap membantu untuk menyediakan layanan sesuai industri nya",
              style: TextStyle(
                fontSize: 18
              ),
            )
            ),
          ),
          Center(
            child: (
            Text("Dari diskusi awal sampai dengan menyediakan expert consultant.",
              style: TextStyle(
                fontSize: 18
              ),
            )
            ),
          ),
          SizedBox(height: 10,),
      Container(
        width: screenSize.width*0.5,
        height: 500,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            expansionCallback: (index, isExpanded) {
              final tile = advancedTiles[index];
              setState(() => tile.isExpanded = isExpanded);

            },
            children: advancedTiles
                .map((tile) => ExpansionPanelRadio(
              value: tile.title,
              canTapOnHeader: true,
              headerBuilder: (context, isExpanded) => buildTile(tile),
              body: Column(
                children: tile.tiles.map(buildTile).toList(),
              ),
            ))
                .toList(),
          ),
        ),
      ),
        ],
      ),
    );


  }
  Widget buildTile(AdvancedTile tile) => ListTile(
    title: Text(tile.title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

// class dd extends StatefulWidget {
//   const dd({Key? key}) : super(key: key);
//
//   @override
//   State<dd> createState() => _ddState();
// }
//
// class _ddState extends State<dd> {
//   String dropdownValue = 'One';
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: Icon(Icons.arrow_downward),
//       elevation: 16,
//       style: TextStyle(color: Colors.deepPurple),
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String? newValue){
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//       items: <String>['One', 'Two', 'Three'].map<DropdownMenuItem<String>>((String value){
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         )
//       }
//
//       )
//     )
//   }
// }

