import 'package:flutter/material.dart';
import 'package:mcs_flutter/conts.dart';

import '../text_body.dart';

class Home6 extends StatefulWidget {
  const Home6({Key? key}) : super(key: key);

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        height: 680,
        color: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 23, 42),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 370,
              height: 500,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/xcxcxc.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Our Company',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      row1,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'LEARN MORE',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white),
                      ))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 370,
              height: 500,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/vbvb.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Carriers',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      row2,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'LEARN MORE',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 23, 42),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 370,
              height: 500,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/cvcvcv.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Logistics',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      row3,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'LEARN MORE',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
