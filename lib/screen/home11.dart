
import 'package:flutter/material.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


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
    String dropdownValue = 'Non Financial Services';

    return Container(
      height: 650,
      width: screenSize.width,
      color: Colors.lightBlueAccent,

      child: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: (
            Text("VARIOUS INDUSTRY AND SECTORS",
              style: TextStyle(
                fontSize: 45,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            )
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: (
            Text("Masing-masing Industri mempunyai kebutuhan spesifik nya, kami siap membantu untuk menyediakan layanan sesuai industri nya")
            ),
          ),
          Center(
            child: (
            Text("Dari diskusi awal sampai dengan menyediakan expert consultant.")
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
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

