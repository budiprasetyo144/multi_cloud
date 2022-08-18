import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/main.dart';
import 'package:mcs_flutter/widget/dropdown.dart';
import '../const/conts.dart';

PreferredSize AppbarSmallSize(Size screenSize) {
  return PreferredSize(
    preferredSize: Size(screenSize.width, 80),
    child: Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: kPrimaryColor, width: 1, style: BorderStyle.solid),
        ),
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
            child: Image.asset("assets/logo/multicloudsolution.jpg"),
          ),
          const Spacer(
            flex: 1,
          ),
          const SizedBox(
            height: 50,
            width: 150,
            child: En(),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ),
  );
}

PageController controller = PageController();

PreferredSize AppbarFullSize(Size screenSize, BuildContext context) {
  return PreferredSize(
    preferredSize: Size(screenSize.width, 135),
    child: Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: kPrimaryColor, width: 1, style: BorderStyle.solid),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * 0.1,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
            child: Image.asset("assets/logo/multicloudsolution.jpg"),
          ),
          SizedBox(
            width: screenSize.width * 0.2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
            child:  Text(
              "Home",
              style: GoogleFonts.poppins(
                  fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
            ),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
           Text(
            "About us",
            style: GoogleFonts.poppins(
                fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
           Text(
            "Solution",
            style: GoogleFonts.poppins(
                fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
           Text(
            "Contact Us",
            style: GoogleFonts.poppins(
                fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  void _scrollToIndex(int index) {
    controller.animateToPage(index + 1,
        duration: const Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}
