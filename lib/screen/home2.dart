import 'package:flutter/material.dart';
import 'package:mcs_flutter/animation/animasi1.dart';
import 'package:mcs_flutter/animation/animasi2.dart';
import 'package:mcs_flutter/animation/animasi3.dart';
import 'package:mcs_flutter/animation/animasi4.dart';
import 'package:google_fonts/google_fonts.dart';


class Home2 extends StatelessWidget {
  const Home2({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.43,
      width: screenSize.width,
      color: const Color.fromARGB(255, 8, 66, 113),

      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: screenSize.width * 0.1,
            ),

            Container(
              padding: EdgeInsets.only(top: screenSize.height * 0.05),
              width: screenSize.width * 0.2,
              child: Column(
                children: [
                  const Animasi(),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    "MIGRATE",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Sample text. Click to select the",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "text box. Click again or double",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "click to start editing the text.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: screenSize.height * 0.05),
              width: screenSize.width * 0.2,
              child: Column(
                children: [
                  const Animasi2(),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    "ACCESS",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Sample text. Click to select the",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "text box. Click again or double",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "click to start editing the text.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: screenSize.height * 0.05),
              width: screenSize.width * 0.2,
              child: Column(
                children: [
                  const Animasi3(),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    "PROTECT",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Sample text. Click to select the",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "text box. Click again or double",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "click to start editing the text.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: screenSize.height * 0.05),
              width: screenSize.width * 0.2,
              child: Column(
                children: [
                  const Animasi4(),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    "SCALE",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Sample text. Click to select the",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "text box. Click again or double",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "click to start editing the text.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}