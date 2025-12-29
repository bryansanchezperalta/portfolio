import 'package:flutter/material.dart';
import 'package:portfolio/models/milestone.dart';
import 'package:portfolio/models/tool.dart';

enum Project {
  bancomat,
  rhd,
  spark,
  homext,
  evergreen;

  String get imagePath {
    switch (this) {
      case bancomat:
        return 'assets/icons/bancomat.png';
      case rhd:
        return 'assets/icons/rhd.png';
      case spark:
        return 'assets/icons/spark.png';
      case homext:
        return 'assets/icons/homext.jpeg';
      case evergreen:
        return 'assets/icons/evergreen.jpg';
    }
  }

  String get title {
    switch (this) {
      case bancomat:
        return 'Bancomat';
      case rhd:
        return 'RHD App';
      case spark:
        return 'Spark';
      case homext:
        return 'Homext';
      case evergreen:
        return 'Evergreen';
    }
  }

  String? get iosLink {
    switch (this) {
      case bancomat:
        return 'https://apps.apple.com/it/app/bancomat/id1669076486';
      case rhd:
        return null;
      case Project.spark:
        return 'https://apps.apple.com/it/app/spark-ride-share/id1507555553';
      case homext:
        return null;
      case evergreen:
        return null;
    }
  }

  String? get androidLink {
    switch (this) {
      case bancomat:
        return 'https://play.google.com/store/apps/details?id=com.bancomat.app';
      case rhd:
        return null;
      case spark:
        return 'https://play.google.com/store/apps/details?id=com.spark.rideshare.app';
      case homext:
        return null;
      case evergreen:
        return null;
    }
  }

  String get descripition {
    switch (this) {
      case bancomat:
        return 'BANCOMAT is a mobile application for digital payments and real-time money transfers, directly integrated with users’ bank accounts.\nKey features include:\n1) Peer-to-peer payments using phone numbers\n2) Online and in-store payments via QR Code\n3)Secure and instant payment processing flows\n3)Request and receive money between contacts4)Integration of a loyalty system (BANCOMAT Club) with rewards, personalized offers, and gamification mechanics\n5) Digital wallet for storing loyalty cards and documents\n6) The app is designed with a strong focus on transaction security, performance, and usability, ensuring fast and reliable payment experiences while maintaining a smooth and intuitive user journey.';
      case rhd:
        return 'RHD, the flagship product of Alfa Group\'s Software Factory, is a low-code platform for designing and automating business processes (BPM).';
      case spark:
        return 'S-Park is a mobile app designed to allow user to spend less time finding and reserving monitored and free parking slots, considering: distance, prizes and schedules.';
      case homext:
        return 'Homext is a mobile app designed to allow Apple user to monitor their electricity bills, tracking the consumption of each HomeKit device.';
      case evergreen:
        return 'Evergreen is a mobile app designed to allow user to access their workout schedule and anable gym istructors to manage them.';
    }
  }

  String get role {
    switch (this) {
      case bancomat:
        return 'Flutter Developer';
      case rhd:
        return 'Flutter Developer';
      case spark:
        return 'Flutter Developer';
      case homext:
        return 'iOS Developer';
      case evergreen:
        return 'Flutter Developer';
    }
  }

  List<String>? get imagesPath {
    switch (this) {
      case bancomat:
        return [
          'projects/bancomat/app_images/home.png',
          'projects/bancomat/app_images/send_and_request.png',
          'projects/bancomat/app_images/payment_request.png',
          'projects/bancomat/app_images/shops.png',
          'projects/bancomat/app_images/loyalty.png',
        ];
      case rhd:
        return [
          'projects/rhd/app_images/splash.png',
          'projects/rhd/app_images/dashboards.png',
          'projects/rhd/app_images/myRHD.png',
          'projects/rhd/app_images/tickets.png',
        ];
      case spark:
        return [
          'projects/spark/app_images/map.png',
          'projects/spark/app_images/garage_modal.png',
          'projects/spark/app_images/garage.png',
          'projects/spark/app_images/profile.png',
        ];
      case homext:
        return null;
      case evergreen:
        return null;
    }
  }

  List<Milestone> get milestones {
    switch (this) {
      case bancomat:
        return [
          Milestone(
            icon: Icons.barcode_reader,
            description: 'Build the barcode scanner',
          ),
          Milestone(
            icon: Icons.brush,
            description: 'Developed complex canva for camera preview',
          ),
          Milestone(
            icon: Icons.accessibility,
            description: 'Integrated accessibility standards',
          ),
        ];
      case rhd:
        return [
          Milestone(
            icon: Icons.design_services,
            description:
                'Completely redesigned the app\'s user interface, integrating Apple\'s Human Interface Guidelines using CupertinoWidgets',
          ),
          Milestone(
            icon: Icons.notifications,
            description:
                'Implemented notifications using Firebase Cloud Messaging.',
          ),
          Milestone(
            icon: Icons.code,
            description: 'Developed integration tests for the entire app.',
          ),
          Milestone(
            icon: Icons.rocket_launch,
            description:
                'Improved performance, scalability, and maintainability',
          ),
        ];
      case spark:
        return [
          Milestone(
            icon: Icons.map_outlined,
            description: 'Integrated Google and Apple maps API.',
          ),
          Milestone(
            icon: Icons.payment,
            description: 'Implemented payments processing using Stripe\'s API.',
          ),
          Milestone(
            icon: Icons.data_array_rounded,
            description:
                'Managed database, media storage and authentication using Firebase',
          ),
        ];
      case homext:
        return [
          Milestone(
            icon: Icons.home_filled,
            description: 'Managed HomeKit devices.',
          ),
          Milestone(
            icon: Icons.data_array_rounded,
            description: 'Managed database using FileMaker.',
          ),
        ];
      case evergreen:
        return [
          Milestone(
            icon: Icons.person,
            description:
                'I developed the entire app from scratch, using Firebase for the database, media storage, authentication and backend APIs',
          ),
        ];
    }
  }

  List<Tool> get tools {
    switch (this) {
      case bancomat:
        return [Tool.flutter, Tool.firebase, Tool.googleCloud];
      case rhd:
        return [Tool.flutter, Tool.firebase, Tool.googleCloud];
      case spark:
        return [Tool.flutter, Tool.firebase, Tool.googleMaps, Tool.mapKit];
      case homext:
        return [Tool.swiftUI, Tool.homeKit, Tool.fileMaker];
      case evergreen:
        return [Tool.flutter, Tool.firebase];
    }
  }
}
