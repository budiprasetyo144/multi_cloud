import 'package:flutter/material.dart';

import '../const/conts.dart';

class Botton_tombol2 extends StatelessWidget {
  Botton_tombol2({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            primary: const Color.fromARGB(255, 255, 47, 0)),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Botton_tombol extends StatelessWidget {
  Botton_tombol({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            primary: kPrimaryColor),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
