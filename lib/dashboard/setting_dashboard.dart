import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mcs_flutter/api/setting_api.dart';
import 'package:http/http.dart' as http;

class SettingDashboard extends StatefulWidget {
  const SettingDashboard({super.key});

  @override
  State<SettingDashboard> createState() => _SettingDashboardState();
}

class _SettingDashboardState extends State<SettingDashboard> {
  String img = 'assets/file/empty.jpg';
  @override
  Future<void> uploadFile() async {
    // TODO: implement upload File
    FilePickerResult? result;
    print('Picker file');
    result = await FilePicker.platform
        .pickFiles(allowMultiple: true, withReadStream: true, withData: false);
    if (result != null) {
      print(result.files.first.name);
      //create
      var req = http.MultipartRequest(
          "POST", Uri.parse("http://10.107.72.92:8081/file"));

      var response = http.get(Uri.parse("http://10.107.72.92:8081/file"));

      List<PlatformFile>? files = result.files;

      if (files != null) {
        print('Add file select with picker');
        for (PlatformFile file in files) {
          //add select with req
          req.files.add(http.MultipartFile("file", file.readStream!, file.size,
              filename: file.name));
          setState(() {
            img = "assets/file/" + file.name;
          });
        }
      }
      // send request
      var resp = await req.send();

      //read response
      String res = await resp.stream.bytesToString();

      //your response
      print(res);
    }
  }

  var btnText = 'Save Setting';
  var enb = true;
  final formKey = GlobalKey<FormState>();
  String id = '';
  String im = '';
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
                          switch (btnText) {
                            case 'Save Setting':
                              createSetting(im.toString(), tt.toString(),
                                  tl.toString(), em.toString(), no.toString());
                              setState(() {
                                btnText = 'Update Setting';
                                enb = false;
                              });
                              break;
                            case 'Update Setting':
                              setState(() {
                                enb = true;
                                btnText = 'Save Update';
                              });
                              break;
                            case 'Save Update':
                              break;
                            default:
                          }
                        },
                        child: Text(
                          btnText,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    // indent: 20,
                    // endIndent: 0,
                    color: Colors.grey,
                  ),
                  const Spacer(
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
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Site icon",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 150,
                              child: Image.asset('$img'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 30,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: uploadFile,
                                    //     () async {
                                    //   final imagePicker = await ImagePickerPlugin()
                                    //       .pickImage(source: ImageSource.gallery,imageQuality: 20);
                                    //
                                    //   if(imagePicker != null){
                                    //     final file = File(imagePicker.path);
                                    //     final result = await FileApi.upload(file);
                                    //
                                    //     final String imgPath = result['filePath'];
                                    //
                                    //     setState(() {
                                    //       img = imgPath;
                                    //     });
                                    //   }
                                    // },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      primary: Colors.white,
                                      // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                    ),
                                    child: const Text(
                                      "Change",
                                      style: TextStyle(color: Colors.black),
                                    ))),
                            const SizedBox(
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
                                    child: const Text(
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
                            const Text(
                              "Site title",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: screenSize1 * 0.5,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    labelText: "Multi Cloud Solution",
                                    hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                                onChanged: (value) => tt = value,
                                enabled: enb,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Site tagline",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: screenSize1 * 0.5,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    labelText: "Cloud Partner with Eksad",
                                    hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                                onChanged: (value) => tl = value,
                                enabled: enb,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
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
                  const SizedBox(
                    height: 30,
                    width: 0,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Email address",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: screenSize1 * 0.5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  labelText: "xxxxxx@eksad.com",
                                  hintStyle: const TextStyle(),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                              onChanged: (value) => em = value,
                              enabled: enb,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "No Office",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: screenSize1 * 0.5,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "02x-xxxx-xxxx",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                              onChanged: (value) => no = value,
                              enabled: enb,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  const Spacer(
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
