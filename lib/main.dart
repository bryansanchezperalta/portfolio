import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/project_details.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/theme/app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/project',
        builder: (context, state) {
          Project project = state.extra as Project;

          return ProjectDetailsPage(project: project);
        },
      ),
    ],
  );

  PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        ThemeMode themeMode;

        if (themeProvider.themeMode == null) {
          themeMode = ThemeMode.system;
        } else {
          themeMode = themeProvider.themeMode!;
        }

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
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
      },
    );
  }
}
