import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:demo_application/const/colors.dart';
import 'package:demo_application/layouts/navbar.dart';
import 'package:demo_application/const/images.dart';
import 'package:demo_application/const/text_style.dart';
import 'package:demo_application/test.dart';
import 'package:demo_application/study_materials.dart';
import 'package:demo_application/settings.dart';
import 'package:demo_application/layouts/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize WidgetsBinding before running the app
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.black));

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppSettings.themeProvider,
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const MainScreen(),
          title: "Driving test",
          theme: themeProvider.lightThemeData,
          darkTheme: themeProvider.darkThemeData,
          themeMode: themeProvider.currentTheme,
        );
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const StudyMaterialsPage(),
    const TestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        onDarkModeToggle: (isDarkModeEnabled) {
          AppSettings.themeProvider.toggleDarkMode(isDarkModeEnabled);
          setState(() {}); // Refresh the UI when dark mode is toggled
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            var size = MediaQuery.of(context).size;
            double padding = size.width * 0.05;
            double buttonWidth = size.width * 0.8;

            return Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(padding),
              color: Theme.of(context).scaffoldBackgroundColor, // Use theme color
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    homepage,
                    width: buttonWidth,
                    height: buttonWidth * 0.5,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  normalText(color: Theme.of(context).textTheme.bodyLarge!.color!, size: 18, text: "Welcome to our"),
                  headingText(color: Theme.of(context).textTheme.headlineLarge!.color!, size: 32, text: "Driving App"),
                  const SizedBox(height: 20),
                  normalText(
                    color: Theme.of(context).textTheme.bodyLarge!.color!,
                    size: 16,
                    text: "This app is designed for you to practice test for your driving Exam."
                        "\n Developed by Khatori Tech Solution",
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TestPage()),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            alignment: Alignment.center,
                            width: buttonWidth,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: headingText(color: Theme.of(context).colorScheme.onPrimary, size: 18, text: "Test"),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const StudyMaterialsPage()),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            alignment: Alignment.center,
                            width: buttonWidth,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: headingText(color: Theme.of(context).colorScheme.onPrimary, size: 18, text: "Study Materials"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
