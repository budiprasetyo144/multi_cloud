import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';

class Home8 extends StatelessWidget {
  Home8({super.key, required this.isi});

  int isi;
  PageController controller = PageController();
  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 1, 51, 93),
          height: 300,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Container(
            width: screenSize.width,
            height: 450,
            color: const Color.fromARGB(255, 227, 235, 253),
          ),
        ),
        Column(
          children:  [
            SizedBox(
              height: 150,
            ),
            ContactUs(isi: isi,),
          ],
        )
      ],
    );
  }
}

class ContactUs extends StatelessWidget {
  ContactUs({super.key, required this.isi});

  
  int isi;
  PageController controller = PageController();
  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }


  

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40, right: 20),
            width: screenSize.width * 0.37,
            height: screenSize.height * 0.45,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 40,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  'Quickly incentivize impactful action items before tactical collaboration and idea-sharing. Monotonically engage market-driven intellectual capital through wireless opportunities. Progressively network performance based services for functionalized testing procedures.',
                  style: TextStyle(fontSize: 20, height: 1.5),
                ),
                const Spacer(
                  flex: 1,
                ),
                // Botton_tombol2(title: "LEARN MORE",),

                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: kPrimaryColor),
                    onPressed: () {_scrollToIndex(isi);},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "LEARN MORE",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.37,
            height: screenSize.height * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/server.jpg'),
                  fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
