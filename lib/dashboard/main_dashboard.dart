import 'package:flutter/material.dart';


class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Welcome to Dashboard Multi Cloud Solution'),
            ),
          ],
        ),
      ),
    );
  }
}
