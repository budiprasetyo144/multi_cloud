import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
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
                      "Our company story is a values story",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
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
                              color: Colors.white,
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(right: 20),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sit amet nisl purus in mollis nunc sed id semper.",
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "At in tellus integer feugiat.",
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Commodo viverra maecenas accumsan lacus vel facilisis.",
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            // BARIS 2
                            Row(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height: 60,
                                  width: 60,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sit amet nisl purus in mollis nunc sed id semper.",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "At in tellus integer feugiat.",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Commodo viverra maecenas accumsan lacus vel facilisis.",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Container(
                              color: Colors.white,
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(right: 20),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sit amet nisl purus in mollis nunc sed id semper.",
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "At in tellus integer feugiat.",
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Commodo viverra maecenas accumsan lacus vel facilisis.",
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),

                            // BARIS 2
                            Row(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height: 60,
                                  width: 60,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sit amet nisl purus in mollis nunc sed id semper.",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "At in tellus integer feugiat.",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Commodo viverra maecenas accumsan lacus vel facilisis.",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                )
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
