import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

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
            color: Color.fromARGB(255, 12, 94, 149),
            child: Center(
              child: Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Strategic Partnerships",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Our expertise and experience in dealing with the leading public cloud platforms make us a perfect choice for your business:",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(
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
                      const Image(image: AssetImage('assets/logo/alibaba.png')),
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
