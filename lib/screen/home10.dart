import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home10 extends StatelessWidget {
  Home10({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
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
      height: 500,
      width: screenSize.width,
      // color: Colors.blue,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Color(0xff137fc2),
          Color(0xff3958d5),
          Color(0xff184b80),
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
                      style: TextStyle(color: Colors.white, fontSize: 25)),
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
                  const Text("Le​t’s Discuss",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),

                  const Text("Business",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
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
                      style: TextStyle(color: Colors.white, fontSize: 23)),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Container(
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 212,
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Enter your Name",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 212,
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Enter a valid email address",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Enter your message",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
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
                              nameController.value.text,
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

                          nameController.clear();
                          emailController.clear();
                          messageController.clear();
                        }
                      },
                      child:
                          const Text('Submit', style: TextStyle(fontSize: 16)),
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

  Future SendEmail(String name, String email, String message) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_zfjchwr';
    const templateId = 'template_1wbd3w9';
    const userId = 'DP7R9Yu0J2SBQu2DC';
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json'
        }, //This line makes sure it works for all platforms.
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': name,
            'to_email': email,
            'message': message
          }
        }));
    return response.statusCode;
  }
}
