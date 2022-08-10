import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home10 extends StatelessWidget {
  Home10({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final messageController = TextEditingController();

  // @override
  // Widget build(BuildContext context) {
  //   var screenSize = MediaQuery.of(context).size;
  //   return Container(
  //       height: 680,
  //       width: screenSize.width,
  //       decoration: BoxDecoration(

  //           gradient: LinearGradient(colors: [
  //         Color(0xff027DFD),
  //         Color(0xff4100e0),
  //       ], begin: Alignment.topCenter, end: Alignment.bottomCenter))
  //       child: Row(
  //         children: [
  //           const Spacer(
  //             flex: 3,
  //           ),
  //           Container(
  //             child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   const Spacer(
  //                     flex: 1,
  //                   )

  //                 ],

  //             )
  //           )
  //         ],
  //       ),
  //       );
  // }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 680,
      width: screenSize.width,
      // color: Colors.blue,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Color(0xff1cdac5),
          Color(0xFF027dfd),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Row(
        children: [
          const Spacer(
            flex: 3,
          ),
          Container(
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
                  // Row(
                  // children: [
                  //   const Icon(Icons.phone, color: Colors.white),
                  //   const SizedBox(width: 5),
                  //   Text("CALL US",
                  //       style: GoogleFonts.robotoCondensed(
                  //           color: Colors.white,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold)),
                  // ],
                  // ),
                  // const Spacer(
                  //   flex: 1,
                  // ),
                  const Text("Leave your contact info and",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  // const Spacer(
                  //   flex: 2,
                  // ),
                  // Row(
                  // children: [
                  //   const Icon(Icons.location_pin, color: Colors.white),
                  //   const SizedBox(
                  //     width: 5,
                  //   ),
                  //   Text("LOCATION",
                  //       style: GoogleFonts.robotoCondensed(
                  //           color: Colors.white,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold)),
                  // ],
                  // ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text("Le​t’s Discuss Business",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  // const Spacer(
                  //   flex: 2,
                  // ),
                  // Row(
                  // children: [
                  //   const Icon(Icons.access_time, color: Colors.white),
                  //   const SizedBox(
                  //     width: 5,
                  //   ),
                  //   Text("BUSINESS HOURS",
                  //       style: GoogleFonts.robotoCondensed(
                  //           color: Colors.white,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold)),
                  // ],
                  // ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                      "We’ll contact you immediately to discuss potential business",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
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
            height: screenSize.height * 0.7,
            width: screenSize.width * 0.35,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Contact Us',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Message",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                    maxLines: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 45,
                    width: 110,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: const Color(0xff151534),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final response = await SendEmail(
                              emailController.value.text,
                              messageController.value.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                            response == 200
                                ? const SnackBar(
                                    content: Text('Message Sent!'),
                                    backgroundColor: Colors.green)
                                : const SnackBar(
                                    content: Text('Failed to send message!'),
                                    backgroundColor: Colors.red),
                          );

                          emailController.clear();
                          messageController.clear();
                        }
                      },
                      child: const Text('Send', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }

  Future SendEmail(String email, String message) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_wava70j';
    const templateId = 'template_koc73cj';
    const userId = 'h4BmDnyWlm3OziBDx';
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json'
        }, //This line makes sure it works for all platforms.
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {'to_email': email, 'message': message}
        }));
    return response.statusCode;
  }
}
