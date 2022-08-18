import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Animasi_Kanan_Kiri extends StatelessWidget {
  const Animasi_Kanan_Kiri({Key? key, required this.judul}) : super(key: key);
  final String judul;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: const Duration(seconds: 1),
      curve: Curves.decelerate,
      direction: Direction.horizontal,
      child: Text(
        judul,
        style: GoogleFonts.robotoCondensed(
            color: const Color(0xff1e5ea8),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
