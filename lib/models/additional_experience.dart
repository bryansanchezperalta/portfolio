enum AdditionalExperience {
  sPark;

  String get title {
    switch (this) {
      case sPark:
        return 'S-Park';
    }
  }

  String? get date => null;

  String get description {
    switch (this) {
      case sPark:
        return 'I created and developed S-Park, a multi-platform app available on both the App Store and Play Store.\nDuring development, I deepened my knowledge of Dart, Flutter and Firebase.';
    }
  }
}
