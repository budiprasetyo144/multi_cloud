import 'package:flutter/material.dart';

class Animasi4 extends StatefulWidget {
  const Animasi4({Key? key,
  
  }) : super(key: key);

  @override
  State<Animasi4> createState() => _Animasi4State();
}

class _Animasi4State extends State<Animasi4>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SlideTransition(
      position: _offsetAnimation,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Image.asset("assets/icons/4947736.png",height: screenSize.height * 0.1,),
      ),
    );
  }
}
