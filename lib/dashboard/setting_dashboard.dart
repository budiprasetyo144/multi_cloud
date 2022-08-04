import 'package:flutter/material.dart';
import 'package:mcs_flutter/api/setting_api.dart';

class SettingDashboard extends StatefulWidget {
  const SettingDashboard({super.key});

  @override
  State<SettingDashboard> createState() => _SettingDashboardState();
}

class _SettingDashboardState extends State<SettingDashboard> {
  var btnText = 'Save Setting';
  final formKey =  GlobalKey<FormState>();
  String id = '';
  String im ='assets/ass.jpg';
  String tt = '';
  String tl = '';
  String em = '';
  String no = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenSize1 = screenSize.width * 0.6;
    return Container(
      color: const Color.fromRGBO(238, 224, 224, 1),
      height: 1000,
      padding: const EdgeInsets.only(left: 100),
      width: screenSize.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "General Setting",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Colors.white,
              height: 600,
              width: 1100,
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Site Profile",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.normal)),
                        // SizedBox(
                        //   height: 0,
                        //   width: 820,
                        // ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            primary: const Color.fromARGB(255, 0, 36, 192),
                          ),
                          onPressed: () {
                            switch(btnText){
                              case 'Save Setting':
                                SettingApi().createSetting(im.toString(), tt.toString(), tl.toString(), em.toString(), no.toString());
                                setState(() {
                                  btnText = 'Update Setting';
                                });
                                break;
                              case 'Update Setting':

                                setState(() {
                                  btnText = 'Save Update';
                                });
                                break;
                              case 'Save Update':

                                break;
                              default:
                            }
                          },
                          child: Text(btnText,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      thickness: 1,
                      // indent: 20,
                      // endIndent: 0,
                      color: Colors.grey,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 230,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 20,),
                              Text(
                                "Site icon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                child:
                                Image.asset("assets/logo/multicloudsolution.jpg"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 30,
                                  width: 100,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        primary: Colors.white,
                                        // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                      ),
                                      child: Text(
                                        "Change",
                                        style: TextStyle(color: Colors.black),
                                      ))),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  height: 30,
                                  width: 100,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        primary: Colors.white,
                                        // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                      ),
                                      child: Text(
                                        "Remove",
                                        style: TextStyle(color: Colors.red),
                                      )))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.05,
                        ),
                        Container(
                          height: 230,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Site title",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: screenSize1 * 0.5,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Multi Cloud Solution",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey))
                                  ),
                                  onChanged: (value) => tt = value,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Site tagline",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: screenSize1 * 0.5,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Cloud Partner with Eksad",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey))
                                  ),
                                  onChanged: (value) => tl = value,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  "In a few words, explain what this site is about.",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      width: 0,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Email address",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: screenSize1 * 0.5,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    fillColor: Colors.grey[200],
                                    labelText: "xxxxxx@eksad.com",
                                    hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))
                                ),
                                onChanged: (value) => em = value,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "No Office",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: screenSize1 * 0.5,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "02x-xxxx-xxxx",
                                    hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))
                                ),
                                onChanged: (value) => no = value,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),

                    Spacer(
                      flex: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
