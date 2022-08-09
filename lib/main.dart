import 'package:flutter/material.dart';
import 'package:mcs_flutter/dashboard/dashboard.dart';
import 'package:mcs_flutter/screen/home.dart';
import 'package:mcs_flutter/screen/post.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:mcs_flutter/screen/post_body.dart';
import 'package:mcs_flutter/text/text_post.dart';


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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/admin': (context) => const Dashboard(),
        '/news': (context) => const Post(),
        '/news/1':(context) => PostBody(Imagez: 'assets/images/xcxcxc.jpg', HeadText: headgrid1, Tanggal: tanggal, Bodyfull: bodyfull1, Urutan: urutan1,),
        '/news/2' : (context) => PostBody(Imagez: 'assets/images/eksad.jpg', HeadText: headgrid7, Tanggal: tanggal7, Bodyfull: bodyfull7, Urutan: urutan7,),
        '/news/3' : (context) => PostBody(Imagez: 'assets/images/cvcvcv.jpg', HeadText: headgrid3, Tanggal: tanggal, Bodyfull: bodyfull3, Urutan: urutan3,),
      },

      // home: HomePage(),
    );
  }
}
