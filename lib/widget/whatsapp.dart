import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class WAChat extends StatelessWidget {
  const WAChat({Key? key}) : super(key: key);


  void launchWhatsApp(
      {required final int phone,
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


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        launchWhatsApp(phone: 6281807890777, message: 'Hallo, saya tertarik dengan produk EKSAD dan saya ingin detail tentang program Protalent');
      },
      backgroundColor: Colors.green,
      child: const Icon(Icons.whatsapp,size: 40,),
    );
  }

}

