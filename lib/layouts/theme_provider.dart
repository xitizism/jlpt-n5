import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final ThemeData _lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.white,
      surface: Colors.grey[200]!,
    ),
  );

  final ThemeData _darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
      primary: Colors.blueAccent,
      onPrimary: Colors.black,
      surface: Colors.grey[850]!,
    ),
  );

  ThemeMode _currentThemeMode = ThemeMode.light;

  ThemeMode get currentTheme => _currentThemeMode;

  ThemeData get lightThemeData => _lightTheme;

  ThemeData get darkThemeData => _darkTheme;

  void toggleTheme(ThemeMode themeMode) {
    _currentThemeMode = themeMode;
    notifyListeners();
  }

  void toggleDarkMode(bool darkModeEnabled) {
    toggleTheme(darkModeEnabled ? ThemeMode.dark : ThemeMode.light);
  }
}
