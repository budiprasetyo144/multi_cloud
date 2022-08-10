import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/screen/footer.dart';
import 'package:mcs_flutter/screen/home10.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'package:mcs_flutter/screen/home3.dart';
import 'package:mcs_flutter/screen/home4.dart';
import 'package:mcs_flutter/screen/home6.dart';
import 'package:mcs_flutter/screen/home7.dart';
import 'package:mcs_flutter/screen/home2.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/widget/whatsapp.dart';
import 'package:show_up_animation/show_up_animation.dart';
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
      floatingActionButton: const WAChat(),
      body: ListView(
        scrollDirection: Axis.vertical,
        controller: controller2,
        children: [
          const Home(),
          Home2(),
          const Home4(),
          Home3(screenSize: screenSize),

          const Home7(),
          const Home6(),

          Home10(),
          Home11(),
          const Footer(),
        ],
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
                      color: Colors.grey,
                      width: 0.5,
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
                              fontSize: 17,),
                        ),
                        style: Color_button_appbar(),
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
                              ),
                        ),
                        style: Color_button_appbar(),
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
                             ),
                        ),
                        style: Color_button_appbar(),
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
                          ),
                        ),
                        style: Color_button_appbar(),
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
                        enabledBorder: OutlineInputBorder(

                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
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
          );
  }

  ButtonStyle Color_button_appbar() {
    return ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered))
                                // ignore: curly_braces_in_flow_control_structures
                                return Colors.blue;
                              return Colors.black; // null throus error in flutter 2.2+.
                            }),
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
        Container(
          width: screenSize.width,
          height: screenSize.height*0.7,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/depan.png",),fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width*0.5,
          height: screenSize.height*0.65,
          padding: EdgeInsets.only(left: screenSize.width * 0.1, top: screenSize.height * 0.02),



          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                    'Cloud Consulting Services.',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),overflow: TextOverflow.ellipsis,),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: screenSize.height*0.01),
                width: screenSize.width*0.5,
                height: screenSize.height*0.17,
                child:
                ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: Text('We helps organizations transform their IT environment '
                      'with cost-effective Cloud services. Our team of experts delivers '
                      'cutting-edge Cloud computing consulting services that help companies '
                      'boost their productivity to new heights.',style: TextStyle(fontSize:16,letterSpacing: 1.8,height:1.6,fontWeight: FontWeight.w400,color: Colors.white)),

                ),
              ),
              Container(
                width: screenSize.width*0.5,
                height: screenSize.height*0.22,
                child:ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text('Our Cloud managed services make it possible for organizations '
                      'to reduce their overheads and better productivity, in addition to lowering '
                      'costs and reducing time-to-market. We assist customers with our on-demand '
                      'enterprise Cloud solutions, tools, and applications such as servers, storage,'
                      ' databases, networking, software, and apps, among others.',style: TextStyle(fontSize:16,letterSpacing: 1.8,height:1.6,fontWeight: FontWeight.w400,color: Colors.white)),
                ),


                ),
              Container(
                width: screenSize.width*0.15,
                  height: screenSize.height*0.08,
                  child:
                  ShowUpAnimation(
                    delayStart: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: ElevatedButton(onPressed: (){}, child: Text('CONTACT US',style: TextStyle(fontSize: 19,letterSpacing: 2),
                    ),
                        style: ElevatedButton.styleFrom(primary: Color(0xff1e5ea8),)
                    ),
                  ),



              )
            ],
          ),


          ),

      ],
    );
  }
}
