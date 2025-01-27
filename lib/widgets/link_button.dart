import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final IconData icon;
  final String uri;

  const LinkButton({super.key, required this.icon, required this.uri});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(icon, size: 32),
      onTap: () {
        final url = Uri.parse(uri);
        
        launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}
