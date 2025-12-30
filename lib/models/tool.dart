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
        return 'images/tools/flutter.png';
      case firebase:
        return 'images/tools/firebase.png';
      case googleCloud:
        return 'images/tools/google_cloud.jpg';
      case googleMaps:
        return 'images/tools/google_maps.jpeg';
      case mapKit:
        return 'images/tools/mapkit.jpg';
      case swiftUI:
        return 'images/tools/swiftui.png';
      case homeKit:
        return 'images/tools/homekit.png';
      case fileMaker:
        return 'images/tools/filemaker.png';
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
