import 'package:flutter/material.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';

class ProfessionalExperiencesRow extends StatelessWidget {
  const ProfessionalExperiencesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ExperienceCard(
            title: 'Capgemini',
            date: '2024 - Present',
            description:
                'Developing white-label and design token solutions in Flutter.\nMade experience with Clean architecture and BLoC state management.',
          ),
          ExperienceCard(
            title: 'Alfa Group',
            date: '2023 - 2024',
            description:
                'First company experience as mobile developer.\nImplemented iOS-style design, integration tests and Firebase Cloud Messaging notifications.\nDeveloped closed-source Swift Packages.\nLearned Google Cloud fundamentals.',
          ),
        ],
      ),
    );
  }
}
