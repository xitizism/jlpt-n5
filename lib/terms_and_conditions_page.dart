import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This application is intended solely for practice purposes and should not be considered as a substitute for professional driving instruction or legal advice. By using this application, you agree to the following terms and conditions:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '- This application provides practice tests and study materials to help users prepare for driving exams. It does not guarantee success in real exams or grant driving licenses.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '- The information provided in this application is for educational purposes only and should not be considered as legal advice. Users are encouraged to consult with appropriate authorities for accurate and up-to-date information regarding driving regulations and requirements.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '- The developers of this application are not liable for any damages or consequences resulting from the use of this application, including but not limited to accidents, injuries, or legal issues.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
