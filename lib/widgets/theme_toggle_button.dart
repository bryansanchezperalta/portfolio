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
        bool isDarkMode;

        if (themeProvider.themeMode != null) {
          isDarkMode = themeProvider.themeMode! == ThemeMode.dark;
        } else {
          isDarkMode = Theme.of(context).brightness == Brightness.dark;
        }

        final iconColor = color ?? Theme.of(context).iconTheme.color;

        return IconButton(
          icon: Icon(
            isDarkMode ? Icons.light_mode : Icons.dark_mode,
            size: size ?? 24,
            color: iconColor,
          ),
          onPressed: () {
            themeProvider.toggleTheme(context);
          },
          tooltip: isDarkMode ? 'Light Mode' : 'Dark Mode',
        );
      },
    );
  }
}
