import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../text/text_body.dart';

class Home5 extends StatefulWidget {
  const Home5({Key? key}) : super(key: key);

  @override
  State<Home5> createState() => _Home5State();
}

class _Home5State extends State<Home5> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        height: 620,
        color: Color(-12166252),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: screenSize.width * 0.3,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Image.asset(
                      'assets/icons/206058.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.5,
                    height: 350,
                    padding: EdgeInsets.only(left: 30, right: 20),
                    child: Text(
                      whiteline,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 118, 118, 118),
                          letterSpacing: 2,
                          height: 2),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 23, 42),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(vertical: 17, horizontal: 34),
              width: screenSize.width * 0.3,
              height: screenSize.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Container(
                    height: screenSize.height*0.4,
                    width: screenSize.width * 0.25,
                    child: Text(
                      redline,
                      style: TextStyle(
                          color: Colors.white, fontSize: 22, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),

    );
  }
}
