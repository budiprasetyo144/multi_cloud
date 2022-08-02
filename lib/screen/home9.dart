import 'package:flutter/material.dart';


class Home9 extends StatelessWidget {
  const Home9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color.fromARGB(255, 12, 66, 101),
      child: SizedBox(
        height: screenSize.height*0.75,
        width: screenSize.width,
        child: Row(
          children: [
            const Spacer(
              flex: 3,
            ),
            SizedBox(
              width: 500,
              height: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(48),
                  child: Image.network("assets/images/cloud.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),

            Container(
              padding: const EdgeInsets.all(30),
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Our Vision & Mission "
                        "\n",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold
                    )),

                  const Text(
                     "Vision :"
                         "\n",
                     style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold
                     )),

                  const Text(
                      "To be Preferred IT Partner In The Region."
                          "\n",
                      style: TextStyle(
                          fontSize: 18
                      )),

                  const Text("Mission : "
                          "\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )),

                  const Text("Establish excellent end to end IT Services to enable clients to grow their business rapidly through high competence and professional resources."
                          "\n",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.5
                      )),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
