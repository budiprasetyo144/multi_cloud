import 'package:flutter/material.dart';

class OurTalent extends StatelessWidget {
  const OurTalent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Our Talent'),
            ),
          ],
        ),
      ),
    );
  }
}
