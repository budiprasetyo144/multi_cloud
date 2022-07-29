import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.2,
      color: const Color.fromARGB(255, 70, 70, 70),
      child: Column(
        children: [
          const Spacer(
              flex: 1),
          const Text(
              "PT Tiga Daya Digital Indonesia",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          SizedBox(
            height: 10,
          ),

          const Text(
              "Powered by EKSAD Technology ",
              style: TextStyle(
                color: Colors.white,
              )),
          SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                  Icons.copyright,
                  color: Colors.white),
              Text(
                  "2022. All Rights Reserved.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
          const Spacer(
              flex: 1),
        ],
      ),
    );
  }
}
