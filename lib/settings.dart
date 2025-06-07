import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'layouts/theme_provider.dart';
import 'terms_and_conditions_page.dart';
import 'privacy_policy_page.dart';

class AppSettings {
  static ThemeProvider themeProvider = ThemeProvider();
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _appVersion = 'Loading...'; // Placeholder for app version
  bool _isDarkModeEnabled = false; // Track dark mode state

  @override
  void initState() {
    super.initState();
    _initAppVersion();
    _isDarkModeEnabled = AppSettings.themeProvider.currentTheme == ThemeMode.dark;
  }

  Future<void> _initAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('Dark Mode'),
              trailing: Switch(
                value: _isDarkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    _isDarkModeEnabled = value;
                  });
                  AppSettings.themeProvider.toggleDarkMode(value);
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.policy),
              title: const Text('Terms and Conditions'),
              onTap: () {
                openTermsAndConditionsScreen(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                openPrivacyPolicyScreen(context); // Navigate to Privacy Policy page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('App Version'),
              subtitle: Text(_appVersion),
            ),
            const Divider(),
            // New ListTile for About the Developers
            ListTile(
              leading: const Icon(Icons.developer_mode),
              title: const Text('About the Developers'),
              onTap: () {
                const url = 'https://khatori.net';
                launchURL(url);
              },
            ),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void openTermsAndConditionsScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TermsAndConditionsPage()),
  );
}

void openPrivacyPolicyScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
  );
}
