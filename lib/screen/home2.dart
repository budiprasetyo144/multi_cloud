import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/animation/animasi_kiri_kanan.dart';
import 'package:mcs_flutter/animation/animasi_kanan_kiri.dart';
import 'package:show_up_animation/show_up_animation.dart';

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
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Animasi_Kiri_Kanan(screenSize: screenSize,widget: Image.asset("assets/icons/icon1.png",height: screenSize.height * 0.1,),),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Animasi_Kanan_Kiri(judul: "MIGRATION",),
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
                    Animasi_Kiri_Kanan(screenSize: screenSize,widget: Image.asset("assets/icons/icon2.png",height: screenSize.height * 0.1,),),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Animasi_Kanan_Kiri(judul: "CONSULTING",),
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
                    Animasi_Kiri_Kanan(screenSize: screenSize,widget: Image.asset("assets/icons/icon3.png",height: screenSize.height * 0.1,),),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Animasi_Kanan_Kiri(judul: "LOCAL SUPPORT",),
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
                    Animasi_Kiri_Kanan(screenSize: screenSize,widget: Image.asset("assets/icons/icon4.png",height: screenSize.height * 0.1,),),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Animasi_Kanan_Kiri(judul: "IMPLEMENTATION",),
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



