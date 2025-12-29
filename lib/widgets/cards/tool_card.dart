import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/tool.dart';

class ToolCard extends StatelessWidget {
  final Tool tool;

  const ToolCard({super.key, required this.tool});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(AppPaddings.small),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppBorderRadii.medium),
                child: Image.asset(tool.imagePath, height: 70),
              ),
              Text(tool.name),
            ],
          ),
        ),
      ),
    );
  }
}
