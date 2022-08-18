import 'package:flutter/material.dart';
import 'package:mcs_flutter/dashboard/side_menu.dart';
import 'package:mcs_flutter/dashboard/appbar_dashboard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarAtas(context),
      body: const SideMenu(),
    );
  }
}
