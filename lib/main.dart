import 'package:flutter/material.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/screen/home.dart';
import 'package:mcs_flutter/screen/post.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();
  runApp(const MyApp());
}

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Multi Cloud Solution By EKSAD",
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/admin': (context) => const Dashboard(),
        '/news': (context) => const Post(),
      },

      // home: HomePage(),
    );
  }
}
