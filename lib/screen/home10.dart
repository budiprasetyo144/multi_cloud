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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 680,
      width: screenSize.width,
      color: Colors.white,
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         colors: <Color>[
      //           Color(0xFF0D5396),
      //           Color(0xFF2B69A4),
      //           Color(0xFF42A5F5),
      //         ])
      // ),
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
                      const Icon(Icons.phone, color: Colors.white),
                      const SizedBox(width: 5),
                      Text("CALL US",
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
                      "Office : (021) 5795 - 8040, "
                      "Email : info@eksad.com",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  const Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_pin, color: Colors.white),
                      const SizedBox(
                        width: 5,
                      ),
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
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  const Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.access_time, color: Colors.white),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("BUSINESS HOURS",
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
                      "Mon–Fri   "
                      "8.30 am–5.30 pm,  "
                      "Sat&Sun Closed",
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
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 4,
                blurStyle: BlurStyle.normal,
                offset: Offset(3, 3),
              )
            ]),
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
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                  TextFormField(
                    controller: messageController,
                    decoration: const InputDecoration(hintText: 'Message'),
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
