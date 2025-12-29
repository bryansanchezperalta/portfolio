enum Tool {
  flutter,
  firebase,
  googleCloud,
  googleMaps,
  mapKit,
  swiftUI,
  homeKit,
  fileMaker;

  String get imagePath {
    switch (this) {
      case flutter:
        return 'icons/flutter.png';
      case firebase:
        return 'icons/firebase.png';
      case googleCloud:
        return 'icons/google_cloud.jpg';
      case googleMaps:
        return 'icons/google_maps.jpeg';
      case mapKit:
        return 'icons/mapkit.jpg';
      case swiftUI:
        return 'icons/swiftui.png';
      case homeKit:
        return 'icons/homekit.png';
      case fileMaker:
        return 'icons/filemaker.png';
    }
  }

  String get name {
    switch (this) {
      case flutter:
        return 'Flutter';
      case firebase:
        return 'Firebase';
      case googleCloud:
        return 'Google Cloud';
      case googleMaps:
        return 'Google Maps Api';
      case mapKit:
        return 'MapKit';
      case swiftUI:
        return 'SwiftUI';
      case homeKit:
        return 'HomeKit';
      case fileMaker:
        return 'Filemaker';
    }
  }
}
