import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import 'package:google_fonts/google_fonts.dart';
import '../widget/responsive.dart';

//

class Home extends StatelessWidget {
  Home({Key? key, required this.wijet}) : super(key: key);
  final Widget wijet;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.7,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/depan.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.65,
          padding: EdgeInsets.only(
              left: screenSize.width * 0.1, top: screenSize.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                    'Cloud Consulting Services.',
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.16,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: Text(
                      'We help organizations in transforming their IT environments through the use of cost-effective Cloud services. Our expert team provides cutting-edge Cloud computing consulting services that help companies boost productivity to new heights.',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          letterSpacing: 1.4,
                          height: 1.6,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ),
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.22,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                      'Our Cloud managed services make it possible for organizations '
                      'to reduce their overheads and better productivity, in addition to lowering '
                      'costs and reducing time-to-market. We assist customers with our on-demand '
                      'enterprise Cloud solutions, tools, and applications such as servers, storage,'
                      ' databases, networking, software, and apps, among others.',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          letterSpacing: 1.4,
                          height: 1.6,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ),
              Container(
                width: screenSize.width * 0.15,
                height: screenSize.height * 0.08,
                child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: wijet),
              )
            ],
          ),
        ),
      ],
    );
  }
}
