import 'package:flutter/material.dart';
import 'package:mcs_flutter/screen/post.dart';
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
                              image: AssetImage('assets/images/xcxcxc.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          'Our Company',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          row1,
                          style: const TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news/1');
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
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
                              image: AssetImage('assets/images/eksad.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: const Text(
                          'Award From Alibaba',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          
                          row2,
                          style: const TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news/2');
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
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
                              image: AssetImage('assets/images/cvcvcv.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: const Text(
                          'Logistics',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          row3,
                          style: const TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news/3');
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ],
            ),


            TextButton.icon(
                onPressed: (){Navigator.pushNamed(
                  context,
                  '/news',
                );
                  },
                icon: const Icon(Icons.newspaper,color: Colors.white,size: 30,),
                label: const Text('Read All News',style: TextStyle(fontSize: 30,color: Colors.white),),
            )
          ],
        ),
    );
  }
}

