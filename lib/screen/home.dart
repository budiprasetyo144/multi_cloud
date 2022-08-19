import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/screen/footer.dart';
import 'package:mcs_flutter/screen/home1.dart';
import 'package:mcs_flutter/screen/home8.dart';
import 'package:mcs_flutter/screen/home3_edit.dart';
import 'package:mcs_flutter/screen/home4_edit.dart';

import 'package:mcs_flutter/screen/home6_advantage.dart';
import 'package:mcs_flutter/screen/home7_news.dart';
import 'package:mcs_flutter/screen/home2.dart';
import 'package:mcs_flutter/widget/whatsapp.dart';
import '../widget/responsive.dart';
import 'appbar.dart';
import 'home5.dart';

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
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  //   Untuk pake LIST per height container
  ScrollController controller2 = ScrollController();
  void _scrollToIndex(double index) {
    controller2.animateTo(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarSmallSize(screenSize)
          : AppbarLarge(screenSize),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: WAChat(),
      body: ListView(
        scrollDirection: Axis.vertical,
        controller: controller2,
        children: [
          Home(
            wijet: Button_scroll(),
          ),
          const Home2(),
          const Home3_partner(),
          Home4_solution(screenSize: screenSize),
          const Home5_industry(),
          const Home6_advantages(),
          const Home7_news(),
          Home8_contact_us(),
          Footer(
            content1: konten1(screenSize),
            content2: konten2(screenSize),
          ),
        ],
      ),
    );
  }

  ElevatedButton Button_scroll() {
    return ElevatedButton(
      onPressed: () {
        _scrollToIndex(4096);
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff1e5ea8),
      ),
      child: Text(
        'CONTACT US',
        style: GoogleFonts.poppins(fontSize: 19, letterSpacing: 2),
      ),
    );
  }

  PreferredSize AppbarLarge(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 100),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Colors.grey, width: 0.5, style: BorderStyle.solid),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: screenSize.width * 0.1,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Image.asset(
                "assets/logo/multicloudsolution.jpg",
                width: 200,
                height: 300,
              ),
            ),
            SizedBox(
              width: screenSize.width * 0.15,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    _scrollToIndex(0);
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "Home",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(515); //// POSISI ABOUT US
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "About us",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(860); //// POSISI SOLUTION
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "Solution",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(4050); //// POSISI CONTACT US
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "Contact Us",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: screenSize.width * 0.08,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  ButtonStyle Color_button_appbar() {
    return ButtonStyle(
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          // ignore: curly_braces_in_flow_control_structures
          return Colors.blue;
        return Colors.black; // null throus error in flutter 2.2+.
      }),
    );
  }

  Text FooterHead(String title) => Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2),
      );

  Column konten1(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: screenSize.width * 0.1,
          height: screenSize.height * 0.04,
          child: FooterHead('Sitemap'),
        ),
        const Spacer(
          flex: 3,
        ),
        TextButton(
            onPressed: () {
              _scrollToIndex(0);
            },
            child: FooterBody(
              teks: 'Home',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(515);
            },
            child: FooterBody(
              teks: 'About Us',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(860);
            },
            child: FooterBody(
              teks: 'Solution',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(4050);
            },
            child: FooterBody(
              teks: 'Contact Us',
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }

  Column konten2(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: screenSize.width * 0.13,
            height: screenSize.height * 0.04,
            child: FooterHead('Solution')),
        const Spacer(
          flex: 3,
        ),
        TextButton(
            onPressed: () {
              _scrollToIndex(1480);
            },
            child: FooterBody(
              teks: 'Cloud Migration',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1480);
            },
            child: FooterBody(
              teks: 'Consultation',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1480);
            },
            child: FooterBody(
              teks: 'Local Support',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1480);
            },
            child: FooterBody(
              teks: 'Cloud Implementation',
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }
}
