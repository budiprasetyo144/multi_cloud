import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';

class Home10 extends StatelessWidget {
  const Home10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 800,
      width: screenSize.width,
      color: Colors.white,
      child: Row(
        children: [
          const Spacer(
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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 1,
                  ),

                  Row(
                    children: [
                      const Icon(
                          Icons.phone,
                          color: Colors.white),
                      const SizedBox(
                          width: 5),
                      Text(
                          "CALL US",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),

                  const Text(
                      "Office : (021) 5795 - 8040, "
                          "Email : info@eksad.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16)),
                  const Spacer(
                    flex: 2,
                  ),

                  Row(
                    children: [
                      const Icon(
                          Icons.location_pin,
                          color: Colors.white),
                      const SizedBox(
                        width: 5,),
                      Text("LOCATION",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),

                  const Text(
                      "The East Tower 19th Floor, "
                          "Jl. DR. Ide Anak Agung Gde Agung, "
                          "Kuningan, Kecamatan Setiabudi, "
                          "Kota Jakarta Selatan, DKI Jakarta 12950",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16)),
                  const Spacer(
                    flex: 2,
                  ),

                  Row(
                    children: [
                      const Icon(
                          Icons.access_time,
                          color: Colors.white),
                      const SizedBox(
                        width: 5,),
                      Text("BUSINESS HOURS",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 20,fontWeight:
                          FontWeight.bold)),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),

                  const Text(
                      "Mon–Fri   "
                          "8.30 am–5.30 pm,  "
                          "Sat&Sun Closed",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16)),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),

          Container(
            padding: const EdgeInsets.all(50),
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
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
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Contact Us",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
                const Spacer(
                  flex: 1,
                ),

                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Your Name"),
                ),
                const Spacer(
                  flex: 1,
                ),

                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter A Valid Email Address"),
                ),
                const Spacer(
                  flex: 1,
                ),

                TextFormField(
                  decoration: const InputDecoration(
                      hintText: ""),
                ),
                const Spacer(
                  flex: 1,
                ),

                SizedBox(
                    height: 60,
                    width: 600,
                    child: Botton_tombol(
                      title: "SUBMIT",
                    )),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
