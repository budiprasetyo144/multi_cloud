
import 'package:flutter/material.dart';
import 'package:mcs_flutter/const/conts.dart';

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
    String dropdownValue = 'Non Financial Services';

    return Container(
      height: 873,
      width: screenSize.width,

      child: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: (
            Text("VARIOUS INDUSTRY AND SECTORS",
              style: TextStyle(
                fontSize: 45,
                color: Color(0xff1e5ea8),
                fontWeight: FontWeight.bold,
              letterSpacing: 1.1),
            )
            ),
          ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.15,vertical: 20),
        child: Text('Each industry has its specific needs, we are'
            ' ready to help to provide services according to its industry'
            ', from initial discussions to providing expert consultants.',
          style: TextStyle(fontSize: 21),textAlign: TextAlign.center,),
      ),

      Container(
        width: screenSize.width*0.6,
        child: Expansionpanel(),
      ),
        ],
      ),
    );


  }

}

