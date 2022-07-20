import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/botton.dart';
import 'package:mcs_flutter/conts.dart';

class Home9 extends StatelessWidget {
  const Home9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Row(
              children: [
                Spacer(
                  flex: 3,
                ),
                Container(
                  width: 500,
                  height: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.network("assets/images/vbbvvb.jpg",
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Our Mission",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.orange[800],
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Vision : To be Preferred IT Partner In The Region."
                        ""
                        "Mission : Establish excellent end to end IT Services to enable clients to grow their business rapidly thru high competence and professional resources.",
                        style: TextStyle(fontSize: 20, height: 2),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text("Image from Frepik"),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 800,
          width: screenSize.width,
          color: Colors.white,
          child: Row(
            children: [
              Spacer(
                flex: 3,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    border: Border.all(
                      color: kTextColor,
                      width: 50,
                    )),
                height: screenSize.height * 0.7,
                width: screenSize.width * 0.35,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone,color: Colors.white),
                          SizedBox(width: 5,),
                          Text(
                            "CALL US",
                            style: GoogleFonts.robotoCondensed(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          "Office : (021) 5795 - 8040, "
                          "Email : info@eksad.com",
                          style: TextStyle(color: Colors.white,fontSize: 16)),
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin,color: Colors.white),
                          SizedBox(width: 5,),
                          Text("LOCATION",
                              style: GoogleFonts.robotoCondensed(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          "The East Tower 19th Floor, "
                          "Jl. DR. Ide Anak Agung Gde Agung, "
                          "Kuningan, Kecamatan Setiabudi, "
                          "Kota Jakarta Selatan, DKI Jakarta 12950",
                          style: TextStyle(color: Colors.white,fontSize: 16)),
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_off_rounded,color: Colors.white),
                          SizedBox(width: 5,),
                          Text("BUSINESS HOURS",
                              style: GoogleFonts.robotoCondensed(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          "Mon–Fri"
                          " 8.30 am–5.30 pm,   "
                          "Sat&Sun Closed",
                          style: TextStyle(color: Colors.white,fontSize: 16)),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    blurRadius: 4,
                    blurStyle: BlurStyle.normal,
                    offset: Offset(3, 3),
                  )
                ]),
                height: screenSize.height * 0.7,
                width: screenSize.width * 0.35,
                child: Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Contact Us",
                      style: GoogleFonts.robotoCondensed(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: kTextColor),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Enter Your Name"),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter A Valid Email Address"),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    TextFormField(
                      decoration: InputDecoration(),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Container(
                        height: 60,
                        width: 600,
                        child: Botton_tombol(
                          title: "SUBMIT",
                        )),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.3,
          color: Color.fromARGB(255, 70, 70, 70),
          child: Column(
            children: [
              Spacer(flex: 1),
              Text(
                "PT Tiga Daya Digital Indonesia",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Spacer(flex: 2),
              Text(
                "Powered by EKSAD Technology",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        )
      ],
    );
  }
}
