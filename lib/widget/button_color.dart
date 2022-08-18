import 'package:flutter/material.dart';

ButtonStyle DefaultColors() {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        return const Color(0xff1e5ea8); // Defer to the widget's default.
      },
    ),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          return Colors.red; //<-- SEE HERE
        return null; // Defer to the widget's default.
      },
    ),
  );
}

ButtonStyle Btn_Submit() {
  return ButtonStyle(
    shape: MaterialStateProperty.resolveWith((ShapeBorder) =>
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        return const Color(0xff1e5ea8); // Defer to the widget's default.
      },
    ),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          return Colors.red; //<-- SEE HERE
        return null; // Defer to the widget's default.
      },
    ),
  );
}
