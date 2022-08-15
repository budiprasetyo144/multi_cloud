import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home3_partner extends StatelessWidget {
  const Home3_partner({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.8,
      width: screenSize.width,
      //color: Color.fromARGB(255, 0, 36, 192),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.2,
            color: const Color.fromARGB(255, 12, 94, 149),
            child: Center(
              child: Column(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Strategic Partnerships",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Our expertise and experience in dealing with the leading public cloud platforms make us a perfect choice for your business:",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.1
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.3,
            width: screenSize.width,
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  width: screenSize.width * 0.3,
                  child:
                  const Image(image: AssetImage('assets/logo/alibaba.png'),
                    height:42,
                    width: 148,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                // BARIS 2
                SizedBox(
                  width: screenSize.width * 0.3,
                  child: const Image(
                      image: AssetImage('assets/logo/googlecloud.png')),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          // KOLOM 2
          SizedBox(
            height: screenSize.height * 0.3,
            width: screenSize.width,
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  width: screenSize.width * 0.3,
                  child: const Image(
                    image: AssetImage(
                      'assets/logo/huawei.png',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  width: screenSize.width * 0.3,
                  child: const Image(
                    image: AssetImage(
                      'assets/logo/aws.png',
                    ),
                    height: 125,
                    width: 185,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
