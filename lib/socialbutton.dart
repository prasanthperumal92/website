import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String url;
  final String image_asset;
  const SocialButton({super.key,required this.url,required this.image_asset});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _launchURL(url);
      },
      color: Color(0xFF283618),
      icon: SvgPicture.asset(
        image_asset,
        height: 25,
        width: 25,
      ),
    );
  }
}

_launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}