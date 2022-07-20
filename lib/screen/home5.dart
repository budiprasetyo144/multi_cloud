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
                  Container(
                    width: screenSize.width * 0.5,
                    height: 50,
                    padding: EdgeInsets.only(left: screenSize.width * 0.01),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: screenSize.width * 0.02,
                          foregroundImage:
                              AssetImage('assets/images/1222_150.jpg'),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        Container(
                          width: screenSize.width * 0.2,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                width: screenSize.width * 0.07,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  'Bob Rawsthorn',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Container(
                                width: screenSize.width * 0.1,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  ',  highly-trained driver',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: screenSize.width * 0.3,
              height: screenSize.height * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 30),
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
                    height: 380,
                    width: screenSize.width * 0.3,
                    child: Text(
                      redline,
                      style: TextStyle(
                          color: Colors.white, fontSize: 20, height: 1.5),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: screenSize.width * 0.3,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.facebookSquare,
                              size: screenSize.width * 0.04,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.twitterSquare,
                              size: screenSize.width * 0.04,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.instagramSquare,
                              size: screenSize.width * 0.04,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.linkedinIn,
                              size: screenSize.width * 0.04,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
