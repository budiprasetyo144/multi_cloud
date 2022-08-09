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
      height: screenSize.height * 0.5,
      width: screenSize.width,
      color: Colors.grey[200],
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text("Why Choose Us?",
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff1e5ea8),
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    const Animasi(),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "MIGRATION",
                      style: GoogleFonts.robotoCondensed(
                          color: Color(0xff1e5ea8),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "We Experience in Data Migration",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14  ,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Multi Cloud, Migration from Premise",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Enviroment. ",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    const Animasi2(),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "CONSULTING",
                      style: GoogleFonts.robotoCondensed(
                          color: Color(0xff1e5ea8),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "Our experienced Cloud Consultants",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "can help you determine the efficacy",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "of and implement these popular",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "cloud solutions.",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    const Animasi3(),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "LOCAL SUPPORT",
                      style: GoogleFonts.robotoCondensed(
                          color: Color(0xff1e5ea8),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "Our local support team work with",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "our clients every step of the way to",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ensure that their cloud are running",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "smoothly.",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    const Animasi4(),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "IMPLEMENTATION",
                      style: GoogleFonts.robotoCondensed(
                          color: Color(0xff1e5ea8),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Text(
                      "We do cloud all cloud servicess",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "such as Infrastructure  (IAAS),",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Platform (PAAS) and Software",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "(SAAS).",
                      style: GoogleFonts.robotoCondensed(
                        color: Color(0xff111111),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
