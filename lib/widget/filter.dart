import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  State<FilterButton> createState() => _FilterState();
}

class _FilterState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF42A5F5),
                    Color(0xFF145A91),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.black,
              backgroundColor: Colors.blue,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
            child: const Text("Filter"),
          ),
        ],
      ),
    );
  }
}
