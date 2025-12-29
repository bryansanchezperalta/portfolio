enum ProfessionalExperience {
  capgemini,
  alfaGroup;

  String get title {
    switch (this) {
      case capgemini:
        return 'Capgemini';
      case alfaGroup:
        return 'Alfa Group';
    }
  }

  String? get date {
    switch (this) {
      case capgemini:
        return '2024 - Present';
      case alfaGroup:
        return '2023 - 2024';
    }
  }

  String get description {
    switch (this) {
      case capgemini:
        return '• Developed functionality for major clients in the banking and telecommunications sectors, including Bancomat and Vodafone, at Capgemini.\n• Enhanced the Bancomat app by implementing accessibility improvements, ensuring it meets compliance standards and is more user-friendly for individuals with disabilities.\n• Gained valuable insights into the best practices behind successful applications widely used by millions by engaging in significant projects.\n• Adopted test-driven development to streamline workflows and enhance the reliability and safety of task completion.';
      case alfaGroup:
        return '• Improved the 60% of the user experience, making it more readable and professional.\n• Increased maintainability by 30%.\n• Increased scalability by 10%.\n• Improved efficiency by 15%.';
    }
  }
}
