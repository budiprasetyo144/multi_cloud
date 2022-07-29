import 'package:flutter/material.dart';
import 'package:mcs_flutter/screen/home.dart';



class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: HomePage(),
    );
  }
}