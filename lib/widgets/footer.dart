import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final ScrollController scrollController;

  const Footer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: const Border(),
        child: Column(
          children: [
            const Section(
              title: 'Contacts',
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Contact(
                    icon: Icons.mail_rounded,
                    info: 'bryansanchez.311@gmail.com',
                  ),
                  Contact(icon: Icons.phone, info: '+39 3669592792'),
                  Contact(
                    icon: Icons.pin_drop_outlined,
                    info: 'Portici, Naples, Italy',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Contact(
                  icon: FontAwesomeIcons.linkedin,
                  onTap: () {
                    final url = Uri.parse(AppPersonalLinks.linkedin);

                    launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: AppPaddings.medium),
                  child: Contact(
                    icon: FontAwesomeIcons.github,
                    onTap: () {
                      final url = Uri.parse(AppPersonalLinks.gitHub);

                      launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(AppPaddings.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'This portfolio is made in Flutter. Check the code ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'here',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton.filled(
                    onPressed: () {
                      scrollController.animateTo(
                        0,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    icon: const Icon(Icons.keyboard_arrow_up),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
