import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/screen/footer.dart';
import 'package:mcs_flutter/screen/home10.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'package:mcs_flutter/screen/home2.dart';
import 'package:mcs_flutter/screen/home3.dart';
import 'package:mcs_flutter/screen/home4.dart';
import 'package:mcs_flutter/screen/home5.dart';
import 'package:mcs_flutter/screen/home6.dart';
import 'package:mcs_flutter/screen/home7.dart';
import 'package:mcs_flutter/screen/home8.dart';
import 'package:mcs_flutter/screen/home9.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/widget/whatsapp.dart';

import '../widget/responsive.dart';
import 'appbar.dart';
import 'home11.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //   Untuk pake PAGE per index
  PageController controller = PageController();
  void _scrollToIndex2(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }

  //   Untuk pake LIST per height container
  ScrollController controller2 = ScrollController();
  void _scrollToIndex(double index) {
    controller2.animateTo(index,
        duration: const Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarSmallSize(screenSize)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 110),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: kPrimaryColor,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.1,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 30, top: 20, bottom: 20),
                      child: Image.asset("assets/logo/multicloudsolution.jpg"),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.2,
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            _scrollToIndex(0);
                          },
                          child: const Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: kTextColor),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        TextButton(
                          onPressed: () {
                            _scrollToIndex(3150); //// POSISI ABOUT US
                          },
                          child: const Text(
                            "About us",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: kTextColor),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        TextButton(
                          onPressed: () {
                            _scrollToIndex(1230); //// POSISI SOLUTION
                          },
                          child: const Text(
                            "Solution",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: kTextColor),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        TextButton(
                          onPressed: () {
                            _scrollToIndex(5900); //// POSISI CONTACT US
                          },
                          child: const Text(
                            "Contact Us",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: kTextColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenSize.width * 0.08,
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
                            borderSide:
                                const BorderSide(width: 1, color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    // IconButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => const Dashboard(),
                    //         ),
                    //       );
                    //     },
                    //     icon: const Icon(
                    //       Icons.brightness_low_sharp,
                    //       color: Colors.white,
                    //     ))
                  ],
                ),
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const WAChat(),
      body: ListView(
        scrollDirection: Axis.vertical,
        controller: controller2,
        children: [
          const Home(),
          Home2(screenSize: screenSize),
          Home3(
            isi: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                primary: kPrimaryColor),
            onPressed: () {
              _scrollToIndex(5900);
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Learn More',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),),
          const Home4(),
          const Home5(),
          const Home6(),
          const Home7(),
          Home8(
            isi: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  primary: kPrimaryColor),
              onPressed: () {
                _scrollToIndex(5900);
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "LEARN MORE",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const Home9(),
          Home10(),
          Home11(),
          const Footer(),
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
              left: screenSize.width * 0.5, top: screenSize.height * 0.02),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(screenSize.width * 0.04),
            height: screenSize.height * 0.8,
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
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  "If your organization is going to compete",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  "and win with data, you need multi-cloud.",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  "It’s the durable, scalable solution that",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  "allows you to extract more value from your",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  "data and drive new innovations across your",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  "business.",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 20, color: Colors.black54),
                ),
                const Spacer(
                  flex: 1,
                ),
                // SizedBox(
                //   height: screenSize.height * 0.1,
                //   width: screenSize.width * 0.2,
                //   child: Botton_tombol(title: "LEARN MORE"),
                // ),
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
