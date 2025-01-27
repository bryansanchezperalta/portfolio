import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/link_button.dart';

class StoreLinks extends StatelessWidget {
  final String? iosUrl;
  final String? androidUrl;

  const StoreLinks({
    super.key,
    this.iosUrl,
    this.androidUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Show AppStore link only if it's setted
        if (iosUrl != null)
          LinkButton(
            icon: FontAwesomeIcons.appStoreIos,
            rawUrl: iosUrl!,
          ),

        // Show GooglePlay link only if it's setted
        if (androidUrl != null)
          Padding(
            padding: EdgeInsets.only(left: AppPaddings.small),
            child: LinkButton(
              icon: FontAwesomeIcons.googlePlay,
              rawUrl: androidUrl!,
            ),
          ),
      ],
    );
  }
}
