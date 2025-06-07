import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Our app (created by Khatori Tech) operates the Driving License Practice Quiz app.\n\n'
                  'This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our App.\n',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Information Collection and Use\n'
                  'We do not collect any personal data from you. All data generated or used by the App is stored locally on your phone. The App does not transmit any personal data to our servers or any third parties.\n',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Use of Data\n'
                  'Since we do not collect any personal data, we do not use your data for any purposes such as:\n\n'
                  '- Providing and maintaining the App\n'
                  '- Notifying you about changes to the App\n'
                  '- Allowing you to participate in interactive features of our App\n'
                  '- Providing customer support\n'
                  '- Gathering analysis or valuable information to improve our App\n'
                  '- Monitoring the usage of our App\n'
                  '- Detecting, preventing, and addressing technical issues\n\n'
                  'All functionalities of the App are performed locally on your device, ensuring your data remains private and secure.\n',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
