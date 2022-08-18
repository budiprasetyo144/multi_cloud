import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../text/text_body.dart';
import 'package:url_launcher/url_launcher.dart';

class Home7_news extends StatefulWidget {
  const Home7_news({Key? key}) : super(key: key);

  @override
  State<Home7_news> createState() => _Home7_newsState();
}

class _Home7_newsState extends State<Home7_news> {
  void launchNews({
    required String WebsiteUrl,
  }) async {
    String url() {
      return WebsiteUrl;
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

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
                width: screenSize.width * 0.25,
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
                      height: 90,
                      width: screenSize.width * 0.24,
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Text('Top Performing Partner of the year',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 26),
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Text(row1,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              height: 1.2,
                              letterSpacing: 1.2),
                          textAlign: TextAlign.center),
                    ),
                    TextButton(
                        onPressed: () {
                          launchNews(
                              WebsiteUrl:
                                  'https://www.linkedin.com/feed/update/urn:li:share:6938149543133802497?utm_source=linkedin_share&utm_medium=member_desktop_share&utm_content=post');
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: screenSize.width * 0.25,
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
                      height: 90,
                      width: screenSize.width * 0.24,
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Text(
                        'Cloud Demand in \n Indonesia is Predicted to Continue to Increase',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 26),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Text(row2,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 17,
                              height: 1.2,
                              letterSpacing: 1.2),
                          textAlign: TextAlign.center),
                    ),
                    TextButton(
                        onPressed: () {
                          launchNews(
                              WebsiteUrl:
                                  "https://inet.detik.com/business/d-6219553/kebutuhan-cloud-di-indonesia-diprediksi-terus-melesat");
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
                width: screenSize.width * 0.25,
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
                      height: 90,
                      width: screenSize.width * 0.24,
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Text('Advancing Indonesia’s clouds',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 26),
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Text(row3,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              height: 1.2,
                              letterSpacing: 1.2),
                          textAlign: TextAlign.center),
                    ),
                    TextButton(
                        onPressed: () {
                          launchNews(
                              WebsiteUrl:
                                  'https://www.thejakartapost.com/front-row/2022/05/23/advancing-indonesias-cloud-and-data-center-services.html');
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
