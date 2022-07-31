import 'package:flutter/material.dart';

class DropDownButtonDates extends StatefulWidget {
  const DropDownButtonDates ({Key? key}) : super(key: key);

  @override
  State<DropDownButtonDates> createState() => _DropDownButtonDates();
}

class _DropDownButtonDates extends State<DropDownButtonDates> {
  String dropdownValue = "All Dates";

  @override
  Widget build(BuildContext context) {
    return Container(

      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_outlined),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),

        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['All Dates','One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}