import 'package:flutter/material.dart';
import 'package:mcs_flutter/const/conts.dart';

class Homee2 extends StatelessWidget {
  const Homee2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color.fromARGB(255, 227, 235, 253),
      height: 400,
      // padding: const EdgeInsets.all(10),
      width: screenSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text('How do we help?',
                style: TextStyle(
                    fontSize: 45,
                    color: kTextColor,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                child: Text(
                    'We are a one-stop Cloud service provider for world-class Cloud services with diverse options which range from Cloud consulting services to data center'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                    'migration services. Besides, we can also seamlessly scale and migrate your chosen application workloads.'),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                child: Text(
                    'Instead of operating within the constraints of a single cloud vendor, a multi-cloud strategy allows you to access the cloud services from multiple cloud'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                    'providers simultaneously. These cloud providers include Alibaba Cloud,  AWS, Azure, Google Cloud or Huawei Cloud. Using the wide range of leading-'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                    'edge services available from these providers on a single data set, attached to all clouds simultaneously, can boost innovation and grow your business'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                    'faster than if your data was locked into a single cloud.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
