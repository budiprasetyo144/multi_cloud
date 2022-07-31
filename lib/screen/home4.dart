import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 600,
              width: screenSize.width,
              color: Color.fromARGB(255, 0, 36, 192),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      "Our Partner",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Container(
                              width: screenSize.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(image: AssetImage('assets/logo/alibaba.png'))
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            // BARIS 2
                            Row(
                              children: [
                                Container(
                                  width: screenSize.width * 0.3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage('assets/logo/google.png'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  // KOLOM 2
                  Container(
                    height: screenSize.height * 0.20,
                    width: screenSize.width * 0.8,
                    child: Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Container(
                          width: screenSize.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: AssetImage('assets/logo/aws.png',),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenSize.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Image(image: AssetImage('assets/logo/huawei.png',),
                              )],
                              ),
                            )
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
