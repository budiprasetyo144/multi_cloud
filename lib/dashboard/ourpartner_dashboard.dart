import 'package:flutter/material.dart';

class OurPartner extends StatefulWidget {
  const OurPartner({Key? key}) : super(key: key);

  @override
  State<OurPartner> createState() => _OurPartnerState();
}

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             child: Text('Our Talent'),
//           ),
//         ],
//       ),
//     ),
//   );
// }

class _OurPartnerState extends State<OurPartner> {
  //position , skill , level , industry, location

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 224, 224, 1),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                border: Border.all(color: Colors.black),
              ),
              width: 1200,
              height: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 108, 178),
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),

                      //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                    ),
                    padding: EdgeInsets.only(top: 27, left: 35),
                    height: 95,
                    width: 1200,
                    child: Text(
                      'Our Partner',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                  Container(
                    height: 503,
                    child: Row(
                      children: [
                        // Expanded(
                        //   child: views.elementAt(selectedIndex),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
