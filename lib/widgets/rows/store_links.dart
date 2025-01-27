import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/link_button.dart';

class StoreLinks extends StatelessWidget {
  final String? iosUri;
  final String? androidUri;

  const StoreLinks({
    super.key,
    this.iosUri,
    this.androidUri,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Show AppStore link only if it's setted
        if (iosUri != null)
          LinkButton(
            icon: FontAwesomeIcons.appStoreIos,
            uri: iosUri!,
          ),

        // Show GooglePlay link only if it's setted
        if (androidUri != null)
          Padding(
            padding: EdgeInsets.only(left: AppPaddings.small),
            child: LinkButton(
              icon: FontAwesomeIcons.googlePlay,
              uri: androidUri!,
            ),
          ),
      ],
    );
  }
}
