import 'package:flutter/material.dart';

import 'package:show_up_animation/show_up_animation.dart';

class Animasi_Kiri_Kanan extends StatelessWidget {
  const Animasi_Kiri_Kanan({
    Key? key,
    required this.screenSize,
    required this.widget,
  }) : super(key: key);

  final Size screenSize;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
        delayStart: const Duration(seconds: 1),
        curve: Curves.decelerate,
        direction: Direction.horizontal,
        offset: -0.3,
        child: widget);
  }
}
