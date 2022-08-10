import 'package:flutter/material.dart';
import 'package:mcs_flutter/const/conts.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.5,
      height: 350,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.10,
        right: screenSize.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: screenSize.width,
            child: Text('How do we help?',
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            width: screenSize.width,
            child: Text(
                'We are a one-stop Cloud service provider for world-class '
                    'Cloud services with diverse options which range from Cloud consulting '
                    'services to data center migration services. Besides, we can also seamlessly '
                    'scale and migrate your chosen application workloads.',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.1,
                  height: 1.3
                )),
          ),
          Container(
            width: screenSize.width,
            child: Text(
                'Instead of operating within the constraints of a single cloud vendor,'
                    ' a multi-cloud strategy allows you to access the cloud services from '
                    'multiple cloud providers simultaneously. These cloud providers include Alibaba Cloud,  '
                    'AWS, Azure, Google Cloud or Huawei Cloud. Using the wide range of leading-edge services '
                    'available from these providers on a single data set, attached to all clouds simultaneously, can boost'
                    ' innovation and grow your business faster than if your data was locked into a single cloud.',
                style: TextStyle(
                  fontSize: 18,
                    letterSpacing: 1.1,
                    height: 1.3
                )),
          ),
        ],
      ),
    );
  }
}
