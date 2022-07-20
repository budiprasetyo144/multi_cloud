import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../botton.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: Color.fromARGB(255, 241, 252, 254),
      child: Row(
        children: [
          Container(
            height: 600,
            width: screenSize.width * 0.5,
            padding: EdgeInsets.only(left: 200, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore Cloud solutions",
                  style: GoogleFonts.robotoCondensed(
                      color: Color.fromARGB(255, 12, 66, 101),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "for every challenge and",
                  style: GoogleFonts.robotoCondensed(
                      color: Color.fromARGB(255, 12, 66, 101),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "budget",
                  style: GoogleFonts.robotoCondensed(
                      color: Color.fromARGB(255, 12, 66, 101),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Instead of operating within the constraints of a single cloud vendor, a multi-cloud strategy allows you to access the cloud services from multiple cloud providers simultaneously. These cloud providers include AWS, Azure, Google Cloud Platform, or Oracle Cloud. Using the wide range of leading-edge services available from these providers on a single data set, attached to all clouds simultaneously, can boost innovation and grow your business faster than if your data was locked into a single cloud.",
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontSize: 20,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: Botton_tombol(
                        title: "Learn More",
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.03,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.5,
            height: 600,
            child: ClipPath(
              child: Image.asset("assets/images/hhhh.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
