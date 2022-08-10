import 'package:flutter/material.dart';
import 'package:mcs_flutter/screen/post_body.dart';
import '../text/text_body.dart';
import 'package:mcs_flutter/text/text_post.dart';
import 'package:mcs_flutter/main.dart';

class Home6 extends StatefulWidget {
  const Home6({Key? key}) : super(key: key);

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        height: 680,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 29, 59, 189),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: screenSize.width*0.25,
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/eksad.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        height: 90,width: screenSize.width*0.24,
                        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                        child: Text(
                          'Top Performing Partner of the year',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                          textAlign: TextAlign.center
                        ),
                      ),
                      Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          row1,
                          style: const TextStyle(color: Colors.white, fontSize: 17,height: 1.2,letterSpacing: 1.2),textAlign: TextAlign.center
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news/1');
                          },
                          child: const Text(

                            'READ MORE',
                            style: TextStyle(
                                fontSize: 21,
                                decoration: TextDecoration.underline,
                                color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: screenSize.width*0.25,
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/news2.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        height: 90,width: screenSize.width*0.24,
                        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                        child: Text(
                            'Cloud Demand in \n Indonesia is Predicted to Continue to Increase',
                            style: TextStyle(color: Colors.black, fontSize: 28),
                            textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          row2,
                          style: const TextStyle(color: Colors.black, fontSize: 17,height: 1.2,letterSpacing: 1.2),textAlign: TextAlign.center
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news/2');
                          },
                          child: const Text(

                            'READ MORE',
                            style: TextStyle(
                                fontSize: 21,
                                decoration: TextDecoration.underline,
                                color: Colors.black),
                          ))
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 29, 59, 189),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: screenSize.width*0.25,
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/news3.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        height: 90,width: screenSize.width*0.24,
                        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                        child: Text(
                            'Advancing Indonesia’s clouds',
                            style: TextStyle(color: Colors.white, fontSize: 28),
                            textAlign: TextAlign.center
                        ),
                      ),
                      Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          row3,
                          style: const TextStyle(color: Colors.white, fontSize: 17,height: 1.2,letterSpacing: 1.2),textAlign: TextAlign.center
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news/3');
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
                              fontSize: 21,
                                decoration: TextDecoration.underline,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}

