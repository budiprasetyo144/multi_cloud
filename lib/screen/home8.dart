import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcs_flutter/widget/botton.dart';
import 'package:mcs_flutter/const/conts.dart';

class Home8 extends StatelessWidget {
  const Home8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Color.fromARGB(255, 1, 51, 93),
          height: 300,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Container(
            width: screenSize.width,
            height: 450,
            color: Color.fromARGB(255, 227, 235, 253),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 150,),
            ContactUs(),
          ],
        )
      ],
    );
  }
}

class ContactUs extends StatelessWidget {
  const ContactUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 40, right: 20),
            width: screenSize.width*0.37,
            height: screenSize.height*0.6,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2,),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 40,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(flex: 1,),
                Text(
                  'Quickly incentivize impactful action items before tactical collaboration and idea-sharing. Monotonically engage market-driven intellectual capital through wireless opportunities. Progressively network performance based services for functionalized testing procedures.',
                  style: TextStyle(fontSize: 20, height: 1.5),
                ),
                Spacer(flex: 1,),
                Botton_tombol2(title: "LEARN MORE"),
                Spacer(flex: 2,),
              ],
            ),
          ),
          Container(
            width: screenSize.width*0.37,
            height: screenSize.height*0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/vbvbvb.jpg'),
                  fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
