import 'package:flutter/material.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/widget/expansion.dart';

// final List<String> items = [
//   '- Retail',
//   '- Consumer packaged goods',
// ];
// String? selectedValue;

class Home5_industry extends StatefulWidget {
  const Home5_industry({Key? key}) : super(key: key);

  @override
  State<Home5_industry> createState() => _Home5_industryState();
}

class _Home5_industryState extends State<Home5_industry> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    String dropdownValue = 'Non Financial Services';

    return Container(
      height: 899,
      width: screenSize.width,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: (Text(
              "VARIOUS INDUSTRY AND SECTORS",
              style: GoogleFonts.poppins(
                  fontSize: 45,
                  color: Color(0xff1e5ea8),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1),
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.15, vertical: 20),
            child: Text(
              'Each industry has a unique request. We are ready to assist and provide specific requirements based on the client\'s needs, from the first discussion to provide expert consultants.',
              style: GoogleFonts.poppins(fontSize: 21),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: screenSize.width * 0.6,
            child: Expansionpanel(),
          ),
        ],
      ),
    );
  }
}
