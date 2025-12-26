import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/widgets/contact.dart';

class Footer extends StatelessWidget {
  final ScrollController scrollController;

  const Footer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isDesktop = constraints.maxWidth >= 700;

      final Color textColor = Theme.of(context).textTheme.bodySmall?.color ?? Theme.of(context).colorScheme.onBackground;
      final Color linkColor = Theme.of(context).colorScheme.primary;

      return SizedBox(
        width: double.infinity,
        child: Card(
          shape: const Border(),
          child: Column(
            children: [
              Section(
                title: 'Contacts',
                content: isDesktop
                    ? const Row(
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
                      )
                    : const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Contact(
                              icon: Icons.mail_rounded,
                              info: 'bryansanchez.311@gmail.com',
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Contact(icon: Icons.phone, info: '+39 3669592792'),
                            ),
                            Contact(
                              icon: Icons.pin_drop_outlined,
                              info: 'Portici, Naples, Italy',
                            ),
                          ],
                        ),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Contact(
                    icon: FontAwesomeIcons.linkedin,
                    onTap: () => launchURL(AppPersonalLinks.linkedin),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: AppPaddings.medium),
                    child: Contact(
                      icon: FontAwesomeIcons.github,
                      onTap: () => launchURL(AppPersonalLinks.gitHub),
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
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'This portfolio is made in Flutter. Check the code ',
                            style: TextStyle(color: textColor),
                          ),
                          TextSpan(
                            text: 'here',
                            style: TextStyle(color: linkColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchURL('https://github.com/BlAcKPhOeNiX233/portfolio');
                              },
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(color: textColor),
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
    });
  }
}
