import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/providers/theme_provider.dart';

class ThemeToggleButton extends StatelessWidget {
  final double? size;
  final Color? color;

  const ThemeToggleButton({
    super.key,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return IconButton(
          icon: Icon(
            themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            size: size ?? 24,
            color: color,
          ),
          onPressed: () {
            themeProvider.toggleTheme();
          },
          tooltip: themeProvider.isDarkMode ? 'Light Mode' : 'Dark Mode',
        );
      },
    );
  }
}
