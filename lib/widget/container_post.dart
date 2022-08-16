import 'package:flutter/material.dart';
import 'package:mcs_flutter/text/text_post.dart';

class GridContainer extends StatelessWidget {
  const GridContainer(
      {Key? key,
      required this.HeadGrid,
      required this.ImageGrid,
      required this.BodyGrid,
      required this.arah})
      : super(key: key);
  final String HeadGrid;
  final String ImageGrid;
  final String BodyGrid;
  final Widget arah;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      //color: Colors.teal[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => arah,
                  ),
                );
              },
              child: Text(HeadGrid,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          const SizedBox(
            height: 2,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => arah,
                ),
              );
            },
            child: Container(
              width: 350,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageGrid), fit: BoxFit.fitHeight),
              ),
            ),
          ),
          Container(
            width: 350,
            height: 65,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Text(BodyGrid),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => arah,
                ),
              );
            },
            child: const Text(
              'READ MORE',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
