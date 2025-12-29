import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';

class ProfessionalExperiencesRow extends StatelessWidget {
  const ProfessionalExperiencesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
        children: const [
          ExperienceCard(
            title: 'Capgemini',
            date: '2024 - Present',
            description:
                '• Developed functionality for major clients in the banking and telecommunications sectors, including Bancomat and Vodafone, at Capgemini.\n• Enhanced the Bancomat app by implementing accessibility improvements, ensuring it meets compliance standards and is more user-friendly for individuals with disabilities.\n• Gained valuable insights into the best practices behind successful applications widely used by millions by engaging in significant projects.\n• Adopted test-driven development to streamline workflows and enhance the reliability and safety of task completion.',
          ),
          ExperienceCard(
            title: 'Alfa Group',
            date: '2023 - 2024',
            description:
                '• Improved the 60% of the user experience, making it more readable and professional.\n• Increased maintainability by 30%.\n• Increased scalability by 10%.\n• Improved efficiency by 15%.',
          ),
        ],
      ),
    );
  }
}
