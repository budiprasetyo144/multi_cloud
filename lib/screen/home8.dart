import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:mcs_flutter/widget/botton.dart';
// import 'package:mcs_flutter/const/conts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home8_contact_us extends StatelessWidget {
  Home8_contact_us({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 450,
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
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                      "Leave your contact info and",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                      "Let's Discuss Business",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          // fontWeight: FontWeight.bold,
                          letterSpacing: 1.1)),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                      "We’ll contact you immediately to discuss potential business",
                      style: TextStyle(color: Colors.white, fontSize: 23)),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(20),
            height: screenSize.height * 0.7,
            width: screenSize.width * 0.35,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: 450,
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter your Name",
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
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 92,
                      ),
                      Container(
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 220,
                        child: TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            hintText: "Enter a valid phone number",
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
                        width: 7,
                      ),
                      Container(
                        width: 220,
                        child: TextFormField(
                          controller: emailController,
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
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 450,
                    child: TextFormField(
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    width: 100,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith(
                                (ShapeBorder) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.red;
                            return Colors.white;
                          },
                        ),

                        // primary: Colors.white,
                        // backgroundColor:
                        //     const Color.fromARGB(255, 12, 66, 101),
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15),
                        //     ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final response = await SendEmail(
                              nameController.value.text,
                              phoneController.value.text,
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
                          phoneController.clear();
                          emailController.clear();
                          messageController.clear();
                        }
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
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

  Future SendEmail(
      String name, String phone, String email, String message) async {
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
            'from_phone': phone,
            'to_email': email,
            'message': message
          }
        }));
    return response.statusCode;
  }
}
