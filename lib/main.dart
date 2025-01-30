import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/pages/desktop/home_page_desktop.dart';
import 'package:portfolio/pages/desktop/project_details_desktop.dart';
import 'package:portfolio/pages/mobile/home_page_mobile.dart';
import 'package:portfolio/pages/mobile/project_details_mobile.dart';
import 'package:portfolio/widgets/responsive.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Responsive(
          desktopWidget: HomePageDesktop(),
          mobileWidget: HomePageMobile(),
        ),
      ),
      GoRoute(
        path: '/project',
        builder: (context, state) {
          Project project = state.extra as Project;

          return Responsive(
            desktopWidget: ProjectDetailsDesktop(project: project),
            mobileWidget: ProjectDetailsMobile(project: project),
          );
        },
      ),
    ],
  );

  PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      routerConfig: _router,
    );
  }
}
