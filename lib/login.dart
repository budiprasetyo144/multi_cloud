import 'package:flutter/material.dart';
import 'package:mcs_flutter/screen/home.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObscure = true;

  final formKey = GlobalKey<FormState>();
  String _usmail = '';
  String _uspswd = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/blue background login.jpg"),
              fit: BoxFit.fill,
            )
        ),
        height: screenSize.height,
        width: screenSize.width,

        padding: EdgeInsets.only(
            left: screenSize.width * 0.15,
            top: screenSize.height * 0.13,
            bottom: screenSize.height * 0.13),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 116, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              width: screenSize.width * 0.36,
              height: screenSize.height * 0.9,
              child: Image.asset(
                "assets/logo/eksad.jpg",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.33, top: screenSize.height * 0.07),
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                      color: Color.fromARGB(255, 10, 116, 255),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                        blurRadius: 15.0,
                        spreadRadius: 20.0,
                        offset: Offset(
                          0.0,
                          3.0,
                        ),
                      ),
                    ]),
                child: Form(
                  key: formKey,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 0.045,
                        top: screenSize.height * 0.05),
                    width: screenSize.width * 0.36,
                    height: screenSize.height * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                          EdgeInsets.only(left: screenSize.width * 0.055),
                          height: screenSize.width * 0.02,
                          child: Image.asset("assets/logo/logo_protalent.png"),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Container(
                          height: screenSize.width * 0.02,
                          child: Text(
                            'Login as : ',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Container(
                              height: 30,
                              width: screenSize.width * 0.08,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (Context) {
                                  //       return loginClient();
                                  //     },
                                  //   ),
                                  // );
                                },
                                child: Text("CLIENT"),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(110, 30),
                                  primary: Colors.white,
                                  onPrimary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  side: BorderSide(width: 1, color: Colors.blue),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 30,
                              width: screenSize.width * 0.08,
                              child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => Register(),
                                    //   ),
                                    // );
                                  },
                                  child: Text("ADMIN"),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(110, 30),
                                    primary: Colors.blue,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    side:
                                    BorderSide(width: 1, color: Colors.blue),
                                  )),
                            ),
                            Spacer(
                              flex: 5,
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.grey[500],
                              size: screenSize.width * 0.01,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Email"),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Container(
                          height: 40,
                          width: screenSize.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              labelText: "Enter Your Email",
                              hintStyle: TextStyle(),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            validator: (value){
                              if(value == null || value.trim().isEmpty){
                                return "please enter your email address";
                              }else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                                return 'Please enter a valid email address';
                              }else{
                                return null;
                              }
                            },
                            onChanged: (value) => _usmail = value,
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.vpn_key_outlined,
                              color: Colors.grey[500],
                              size: screenSize.width * 0.01,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Password"),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Container(
                          height: 40,
                          width: screenSize.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              labelText: "Password",
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                        () {
                                      _isObscure = !_isObscure;
                                    },
                                  );
                                },
                              ),
                              hintStyle: TextStyle(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            validator: (value){
                              if(value == null || value.trim().isEmpty){
                                return 'This field is required';
                              } else if(value.trim().length<8){
                                return 'Password must be at least 8 characters in length';
                              }
                              return null;
                            },
                            onChanged: (value) => _uspswd = value,
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: screenSize.width * 0.08,
                              child: ElevatedButton(
                                onPressed: () {
                                  if(_usmail == 'admin@admin.com' || _uspswd == 'administrator') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (Context) {
                                          return HomePage();
                                        },
                                      ),
                                    );
                                  }else{
                                    print('Gagal login');
                                  }
                                },
                                child: Text("LOGIN"),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.04,
                            ),
                            // Container(
                            //   height: 30,
                            //   width: screenSize.width * 0.08,
                            //   child: ElevatedButton(
                            //     onPressed: () {
                            //       Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) => Register(),
                            //         ),
                            //       );
                            //     },
                            //     child: Text("REGISTER"),
                            //   ),
                            // ),
                          ],
                        ),
                        Spacer(
                          flex: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}