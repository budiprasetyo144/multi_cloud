import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mcs_flutter/dropdown.dart';
import 'package:mcs_flutter/screen/home.dart';

import '../conts.dart';

PreferredSize AppbarSmallSize(Size screenSize) {
  return PreferredSize(
    preferredSize: Size(screenSize.width, 135),
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: kPrimaryColor, width: 1, style: BorderStyle.solid),
        ),
      ),
      child: Row(
        children: [
          Spacer(
            flex: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
            child: Image.asset("assets/logo/multicloudsolution.jpg"),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 50,
            width: 150,
            child: En(),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    ),
  );
}

PreferredSize AppbarFullSize(Size screenSize, BuildContext context) {
  return PreferredSize(
    preferredSize: Size(screenSize.width, 135),
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: kPrimaryColor, width: 1, style: BorderStyle.solid),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * 0.1,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
            child: Image.asset("assets/logo/multicloudsolution.jpg"),
          ),
          SizedBox(
            width: screenSize.width * 0.2,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Home",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
            ),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
          Text(
            "About us",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
          Text(
            "Solution",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
          Text(
            "Contact Us",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          SizedBox(
            width: screenSize.width * 0.03,
          ),
          Container(
            height: 50,
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
