import 'package:al_noor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildSecurity extends StatelessWidget {
  const BuildSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton.filledTonal(
            onPressed: () => _launchUrl(
              phone: '201147566910',
              message: 'Hello Mr. Osama\nI forgot my password',
            ),
            icon: const FaIcon(
              FontAwesomeIcons.whatsapp,
              color: ColorsManager.green,
            ),
          ),
          const SizedBox(width: 10),
          IconButton.filledTonal(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.telegram,
              color: ColorsManager.blue,
            ),
          ),
          const SizedBox(width: 10),
          IconButton.filledTonal(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.facebook,
              color: ColorsManager.blue,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl(
    {required String phone, required String message}) async {
  String url = "https://wa.me/$phone?text=$message";
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
