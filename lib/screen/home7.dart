import 'package:flutter/material.dart';
import 'package:mcs_flutter/const/conts.dart';

class Home7 extends StatelessWidget {
  const Home7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 227, 235, 253),
      height: 740,
      padding: const EdgeInsets.all(10),
      width: screenSize.width,
      child: Column(
        children: [
          const SizedBox(height: 10,),
          const Center(
            child: Text("Multi Cloud Solutions",
                style: TextStyle(
                    fontSize: 45,
                    color: kTextColor,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(20),
                height: 300,
                width: screenSize.width * 0.30,
                child: Column(
                  children: const [
                    Text("Efficiency Improvement",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Cloud technology eliminates all these hassles. Cloud storage providers have the necessary infrastructure to store your data. These providers also handle the security and maintenance for you! This means you can focus more on your core business instead of buying and maintaining storage devices. Simply use the space you want and pay only for what you use.",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                width: screenSize.width * 0.30,
                child: Column(
                  children: const [
                    Text("Better Scalability",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "The virtually limitless storage and compute resources available in the cloud give organizations the flexibility to scale up or down to address changing business situations. This flexibility enables a company to quickly grow to handle increased customer demand and save money by scaling down resource use when appropriate.",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                width: screenSize.width * 0.30,
                child: Column(
                  children: const [
                    Text("Agility & Adaptability",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "cloud services allow you to focus on important aspects of your business without having to worry about IT solutions. Relying on an external cloud computing company to manage your cloud infrastructure and host your data and applications will enable you to fully commit to achieving your business objectives.",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                height: 300,
                width: screenSize.width * 0.30,
                child: Column(
                  children: const [
                    Text("Faster Development Cycles",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "The collaboration and efficiency possible with cloud platforms will often result in faster development cycles. This enables companies to take advantage of emerging trends and more efficiently address customer demands and expectations. In today’s competitive market, the ability to bring products to market promptly can be the difference between success and failure.",
                      style: TextStyle(
                          fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
