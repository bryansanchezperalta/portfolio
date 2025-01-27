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
              color: Colors.blue,
              borderRadius: BorderRadius.circular(AppBorderRadii.max),
            ),
            child: Icon(icon),
          ),
          if (info != null) Text(info!),
        ],
      ),
    );
  }
}
