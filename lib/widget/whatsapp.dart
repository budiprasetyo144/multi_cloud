import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:spring/spring.dart';

class WAChat extends StatelessWidget {
  WAChat({Key? key}) : super(key: key);

  void launchWhatsApp({
    required final int phone,
    required String message,
  }) async {
    String url() {
      return "https://api.whatsapp.com/send?phone=$phone&text=${Uri.parse(message)}";
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  final SpringController springController =
      SpringController(initialAnim: Motion.play);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        launchWhatsApp(
            phone: 6281807890777,
            message:
                'Hallo, saya tertarik dengan produk EKSAD dan saya ingin tahu lebih lanjut tentang program Multi Cloud Solution');
      },
      backgroundColor: Colors.green,
      child: GestureDetector(
        onTap: () {
          springController.play(
              motion: Motion.reverse,
              animDuration: const Duration(milliseconds: 1000),
              curve: Curves.easeInBack,
              delay: const Duration(milliseconds: 100));
          launchWhatsApp(
              phone: 6281807890777,
              message:
                  'Hallo, saya tertarik dengan produk EKSAD dan saya ingin tahu lebih lanjut tentang program Multi Cloud Solution');
        },
        child: Spring.rotate(
          endAngle: 360 * 10,
          animDuration: const Duration(seconds: 3 * 10),
          springController: springController,
          alignment: Alignment.center,
          animStatus: (AnimStatus status) {},
          child: const Icon(Icons.whatsapp, size: 30),
        ),
      ),
    );
  }
}
