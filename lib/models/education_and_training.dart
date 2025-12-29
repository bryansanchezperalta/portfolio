enum EducationAndTraining {
  appleDeveloperAcademy,
  googleProjectManagement,
  ciscoNetworkingAcademy,
  highSchool;

  String get title {
    switch (this) {
      case appleDeveloperAcademy:
        return 'Apple Developer Academy';
      case googleProjectManagement:
        return 'Google Project Management';
      case ciscoNetworkingAcademy:
        return 'Cisco Networking Academy';
      case highSchool:
        return 'High School: Computer Science 98/100';
    }
  }

  String? get date {
    switch (this) {
      case appleDeveloperAcademy:
        return '2022-2023';
      case googleProjectManagement:
        return '2022-2023';
      case ciscoNetworkingAcademy:
        return '2021-2022';
      case highSchool:
        return '2017-2022';
    }
  }

  String get description {
    switch (this) {
      case appleDeveloperAcademy:
        return '''
I attended the Apple Developer Academy after passing two admission exams, where I developed iOS applications using Swift and learned to communicate with professionals from different areas of app development.
I enriched my portfolio and deepened my knowledge of Git, FileMaker, SwiftUI, UIKit, and other iOS frameworks such as CallKit, HomeKit, WidgetKit, and WeatherKit.
Additionally, I improved my presentation skills by developing and presenting each application to internal and external stakeholders.
        ''';
      case googleProjectManagement:
        return '''
I completed Google Certificates' courses to gain experience as a project manager through real-world scenarios, from the planning to the closure of projects.
During the courses I learned the theory and use of Waterfall and Agile methodologies and create effective project documents, charts and presentations.
I also practiced in soft skill such as negotiation, influencing, coaching, strategic thinking, problem solving, communication and more.
For manage project, I used many software tools such as Asana, Google Docs, Google Sheets, Google Presentations.
''';
      case ciscoNetworkingAcademy:
        return '''
In Cisco I learned how to design, build, and maintain computer networks, as well as how to troubleshoot common network issues. Additionally, I gained a strong understanding of network security and how to implement security measures to protect against cyber threats. 
Through hands-on labs and simulations, utilizing tools such as Packet Tracer, I developed practical experience working with Cisco networking equipment and became proficient in using networking protocols and technologies such as TCP/IP, VLANs, and routing protocols.
''';
      case highSchool:
        return '''
During my studies in high school, I learned the basics of software/web development, database management, and network systems.
I finished school with a knowledge of programming (C++, Java, CSS, HTML, JavaScript, Arduino, Assembly, MySQL), computer programs (Oracle, XAMPP, DEVC++, NetBeans, MySQL Workbench) and project management (Waterfall).
''';
    }
  }
}
