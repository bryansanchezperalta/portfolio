import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Contact extends StatelessWidget {
  final IconData icon;
  final String? info;
  final VoidCallback? onTap;

  const Contact({
    super.key,
    required this.icon,
    this.info,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: AppPaddings.medium),
            padding: EdgeInsets.all(AppPaddings.small),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(AppBorderRadii.max),
            ),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          if (info != null) Text(info!),
        ],
      ),
    );
  }
}
