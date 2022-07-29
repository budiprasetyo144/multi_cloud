import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/animation/animasi1.dart';
import 'package:mcs_flutter/animation/animasi4.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'package:mcs_flutter/screen/home3.dart';
import 'package:mcs_flutter/screen/home4.dart';
import 'package:mcs_flutter/screen/home5.dart';
import 'package:mcs_flutter/screen/home6.dart';
import 'package:mcs_flutter/screen/home7.dart';
import 'package:mcs_flutter/screen/home8.dart';
import 'package:mcs_flutter/screen/home9.dart';

import '../animation/animasi2.dart';
import '../animation/animasi3.dart';
import '../widget/responsive.dart';
import 'appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppbarSmallSize(screenSize)
            : AppbarFullSize(screenSize, context),
        body: ListView(
          children: [
            const Home(),
            Home2(screenSize: screenSize),
            const Home3(),
            const Home4(),
            const Home5(),
            const Home6(),
            const Home7(),
            const Home8(),
            const Home9(),
          ],
        ),
      ),
    );
  }
}

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
      color: const Color.fromARGB(255, 8, 66, 113),
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * 0.1,
          ),
          Container(
            padding: EdgeInsets.only(top: screenSize.height * 0.1),
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
            padding: EdgeInsets.only(top: screenSize.height * 0.1),
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
            padding: EdgeInsets.only(top: screenSize.height * 0.1),
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
            padding: EdgeInsets.only(top: screenSize.height * 0.1),
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
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/79032468-01.jpeg",
        ),
        Container(
          padding: EdgeInsets.only(
              left: screenSize.width * 0.5, top: screenSize.height * 0.2),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(screenSize.width * 0.04),
            height: screenSize.height * 0.95,
            width: screenSize.width * 0.32,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Cut storage",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 55,
                      color: kTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "costs by 3-4x",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 55,
                      color: kTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "with Multi-Cloud",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 55,
                      color: kTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Data Services.",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 55,
                      color: kTextColor,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "If your organization is going to compete",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "and win with data, you need multi-cloud.",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "It’s the durable, scalable solution that",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "allows you to extract more value from your",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "data and drive new innovations across your",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "business.",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  height: screenSize.height * 0.1,
                  width: screenSize.width * 0.2,
                  child: Botton_tombol(title: "LEARN MORE"),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
