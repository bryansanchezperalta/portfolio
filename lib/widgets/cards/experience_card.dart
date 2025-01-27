import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String? date;
  final String description;
  final double height;

  const ExperienceCard({
    super.key,
    required this.title,
    this.date,
    required this.description,
    this.height = 150,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: height,
      child: Card(
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              if (date != null)
                Text(
                  date!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
            ],
          ),
          subtitle: Text(description),
        ),
      ),
    );
  }
}
