import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/animation/animasi1.dart';
import 'package:mcs_flutter/animation/animasi4.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/screen/footer.dart';
import 'package:mcs_flutter/screen/home10.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'package:mcs_flutter/screen/home2.dart';
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
  PageController controller = PageController();
  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
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
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 20),
                        child:
                            Image.asset("assets/logo/multicloudsolution.jpg"),
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
                            child: Text(
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
                              _scrollToIndex(5);
                            },
                            child: Text(
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
                              _scrollToIndex(2);
                            },
                            child: Text(
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
                              _scrollToIndex(9);
                            },
                            child: Text(
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
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.blue),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      }, icon: Icon(Icons.brightness_low_sharp,color: Colors.white,))
                    ],
                  ),
                ),
              ),
        body: ListView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: [
            const Home(),
            Home2(screenSize: screenSize),
            Container(
              height: screenSize.height * 0.91,
              width: screenSize.width,
              color: Color.fromARGB(255, 241, 252, 254),
              child: Row(
                children: [
                  Container(
                    height: 600,
                    width: screenSize.width * 0.5,
                    padding:
                        EdgeInsets.only(left: screenSize.width * 0.1, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "Explore Cloud solutions",
                          style: GoogleFonts.robotoCondensed(
                              color: Color.fromARGB(255, 12, 66, 101),
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
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
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "Instead of operating within the constraints of a single cloud vendor",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "a multi-cloud strategy allows you to access the cloud services from",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "multiple cloud providers simultaneously. These cloud providers ",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          // "include AWS, Azure, Google Cloud Platform, or Oracle Cloud. Using",
                          "include Alibaba Cloud, Huawei Cloud, Google Cloud, AWS. Using",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "the wide range of leading-edge services available from these providers",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "on a single data set, attached to all clouds simultaneously, can boost",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "innovation and grow your business faster than if your data was locked",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "into a single cloud.",
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenSize.width * 0.1,
                              height: screenSize.height * 0.08,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    primary: kPrimaryColor),
                                onPressed: () {
                                  _scrollToIndex(9);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Learn More',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
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
                  SizedBox(
                    width: screenSize.width * 0.5,
                    height: 600,
                    child: ClipPath(
                      child: Image.asset("assets/images/hhhh.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            const Home4(),
            const Home5(),
            const Home6(),
            const Home7(),
            const Home8(),
            const Home9(),
            Home10(),
            Footer(),
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
                // const Spacer(
                //   flex: 1,
                // ),
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
