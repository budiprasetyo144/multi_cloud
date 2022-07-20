import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      child: Container(
        height: 700,
        color: Color(-12166252),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Spacer(flex: 3,),
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
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 33,
                          foregroundImage:
                              AssetImage('assets/images/1222_150.jpg'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Bob Rawsthorn',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          ',  highly-trained driver',
                          style: TextStyle(fontSize: 17,letterSpacing: 1.3,color: Color.fromARGB(255, 118, 118, 118),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(flex: 1,),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 23, 42),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.only(left: 30, right: 30),
              width: 500,
              height: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      'Our Value',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      redline,
                      style: TextStyle(
                          color: Colors.white, fontSize: 20, height: 1.5),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            size: 35,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.twitterSquare,
                            size: 35,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.instagramSquare,
                            size: 35,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            size: 35,
                            color: Colors.white,
                          )),
                    ],
                  ))
                ],
              ),
            ),
            Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}
