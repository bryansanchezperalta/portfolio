import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/additional_experience.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';

class AdditionalExperiencesRow extends StatefulWidget {
  const AdditionalExperiencesRow({super.key});

  @override
  State<AdditionalExperiencesRow> createState() {
    return _AdditionalExperiencesRowState();
  }
}

class _AdditionalExperiencesRowState extends State<AdditionalExperiencesRow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
        children: AdditionalExperience.values.map((experience) {
          return ExperienceCard(
            title: experience.title,
            description: experience.description,
          );
        }).toList(),
      ),
    );
  }
}
