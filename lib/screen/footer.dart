import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key,required this.content1, required this.content2}) : super(key: key);
  final Widget content1;
  final Widget content2;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.68,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: screenSize.height * 0.07,),
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.45,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 5),
                    width: screenSize.width*0.2,
                    height: screenSize.height * 0.35,

                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width*0.12,
                          height: screenSize.height*0.08,
                          decoration: const BoxDecoration(
                            //color: Colors.lightBlueAccent,
                            image: DecorationImage(image: AssetImage('assets/logo/logo-eksad.png'),fit: BoxFit.fill)
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: screenSize.width*0.15,
                          height: screenSize.height*0.04,
                          //color: Colors.blue,
                          child:  Center(
                            child: Text('  Your one stop IT Solution',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,letterSpacing: 1.5,fontSize: 16),),
                          ),
                        ),
                        Spacer(flex: 3,),
                        Container(
                          width: screenSize.width*0.14,
                          height: screenSize.height*0.03,
                          //color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(onPressed: (){
                                _launchLinkedIn();
                              }, icon: Icon(FontAwesomeIcons.linkedinIn,size: 30,),iconSize: 30,color: Colors.black),
                              IconButton(onPressed: (){
                                _launchTwitter();
                              }, icon: Icon(FontAwesomeIcons.twitter,size: 30,),iconSize: 30,color: Colors.black,),
                              IconButton(onPressed: (){
                                _launchInstagram();
                              }, icon: Icon(FontAwesomeIcons.instagram,size: 30,),iconSize: 30,color: Colors.black),
                              IconButton(onPressed: (){
                                _launchYoutube();
                              }, icon: Icon(FontAwesomeIcons.youtube,size: 30,),iconSize: 30,color: Colors.black)

                            ],
                          ),
                        ),
                        Spacer(flex: 8,)
                      ],
                    )
                ),
                Container(
                    width: screenSize.width*0.1,
                    height: screenSize.height * 0.35,

                    child: content1
                ),
                Container(
                    width: screenSize.width*0.13,
                    height: screenSize.height * 0.35,

                    child: content2
                ),
                Container(
                    width: screenSize.width*0.2,
                    height: screenSize.height * 0.37,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenSize.width*0.2,
                          height: screenSize.height * 0.04,
                          child: FooterHead('Contact'),
                        ),
                        Spacer(),
                        Container(
                          width: screenSize.width*0.164,
                          child: ListTile(
                              leading: Icon(
                                Icons.phone,
                                size: 25,
                                color: Colors.black,
                              ),
                              title: TextButton(onPressed: (){},
                                child: Text('(021) 5795 - 8040',
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                      color: Colors.black87,
                                  ),
                                ),
                              ),

                            ),
                        ),

                        Container(
                          width: screenSize.width*0.16,
                          child: ListTile(
                            leading: Icon(
                              Icons.mail,
                              size: 25,
                              color: Colors.black,
                            ),
                            title: TextButton(onPressed: (){},
                              child: Text('info@eksad.com',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  color: Colors.black87
                                ),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text('PT. Tiga Daya Digital Indonesia The East '
                            'Tower 19th Floor Jl. Dr. Ide Anak Agung '
                            'Gde Agung Blok E3.2 '
                            'Mega Kuningan, Jakarta Selatan 12950',
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.2
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox()
              ],
            ),
          ),
          const Divider(height: 3,thickness: 3,),
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.13,
            child:  Center(child: Text('PT. Tiga Daya Digital Indonesia © 2018, All Rights Reserved',style: GoogleFonts.poppins(letterSpacing: 1.3,height: 1.4,fontSize: 17),)),
          )
        ],
      )
    );
  }

  Text FooterHead(String title) => Text(title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 2),);

}

class FooterBody extends StatelessWidget {
  FooterBody({
    Key? key, required this.teks
  }):super(key: key);
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Text(teks,style: GoogleFonts.poppins(color: Color.fromARGB(
        255, 5, 22, 93),fontSize: 16,letterSpacing: 1.2),);
  }
}


void _launchLinkedIn() async {
  String url() {
    return "https://www.linkedin.com/company/pt-tiga-daya-digital-indonesia-triputra-group-eksad-technology";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}
void _launchTwitter() async {
  String url() {
    return "https://twitter.com/eksad_technology/";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

void _launchInstagram() async {
  String url() {
    return "https://www.instagram.com/eksad_technology/";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

void _launchYoutube() async {
  String url() {
    return "https://youtube.com/eksad_technology";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}