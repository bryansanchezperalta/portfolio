import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';
import 'package:portfolio/models/professional_experience.dart';

class ProfessionalExperiencesRow extends StatelessWidget {
  const ProfessionalExperiencesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
        shrinkWrap: true,
        children: ProfessionalExperience.values.map((experience) {
          return ExperienceCard(
            title: experience.title,
            date: experience.date,
            description: experience.description,
          );
        }).toList(),
      ),
    );
  }
}
