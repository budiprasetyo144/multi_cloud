import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcs_flutter/conts.dart';

class Home7 extends StatelessWidget {
  const Home7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color.fromARGB(255, 227, 235, 253),
      height: 700,
      child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Center(
            child: Text("Multi Cloud Solutions",
                style: TextStyle(
                    fontSize: 45,
                    color: kTextColor,
                    fontWeight: FontWeight.bold)),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(40),
                height: screenSize.height*0.32,
                width: screenSize.width*0.25,
                child: Column(
                  children: [
                    Text(
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                height: screenSize.height*0.32,
                width: screenSize.width*0.25,
                child: Column(
                  children: [
                    Text(
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(40),
                height: screenSize.height*0.32,
                width: screenSize.width*0.25,
                child: Column(
                  children: [
                    Text(
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 4, 49, 173)),
                height: screenSize.height*0.32,
                width: screenSize.width*0.25,
                child: Column(
                  children: [
                    Text(
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
