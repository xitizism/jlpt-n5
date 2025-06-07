import 'package:flutter/material.dart';
import 'package:demo_application/layouts/quiz_screen.dart';
import 'package:demo_application/questions/set1.dart' as set1;
import 'package:demo_application/questions/set2.dart' as set2;
import 'package:demo_application/questions/set3.dart' as set3;
import 'package:demo_application/questions/set4.dart' as set4;
import 'package:demo_application/questions/set5.dart' as set5;
import 'package:demo_application/questions/set6.dart' as set6;
import 'package:demo_application/questions/set7.dart' as set7;
import 'package:demo_application/questions/set8.dart' as set8;
import 'package:demo_application/questions/set9.dart' as set9;
import 'package:demo_application/questions/set10.dart' as set10;
import 'package:demo_application/questions/set11.dart' as set11;
import 'package:demo_application/questions/set12.dart' as set12;
import 'package:demo_application/questions/set13.dart' as set13;
import 'package:demo_application/questions/set14.dart' as set14;
import 'package:demo_application/questions/set15.dart' as set15;
import 'package:demo_application/questions/set16.dart' as set16;
import 'package:demo_application/questions/set17.dart' as set17;
import 'package:demo_application/questions/set18.dart' as set18;
import 'package:demo_application/questions/set19.dart' as set19;
import 'package:demo_application/questions/set20.dart' as set20;
import 'package:demo_application/questions/set21.dart' as set21;
import 'package:demo_application/questions/set22.dart' as set22;
import 'package:demo_application/questions/set23.dart' as set23;
import 'package:demo_application/questions/set24.dart' as set24;

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter wise Test'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Unit 1: Driver's Knowledge"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set1.set1Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.traffic),
            title: const Text("Unit 2: Obey the signals"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set2.set2Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.signpost),
            title: const Text("Unit 3: Obey signs, markings, etc."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set3.set3Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text("Unit 4: Where cars pass, where cars shouldn't"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set4.set4Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.local_police),
            title: const Text("Unit 5: Priority for emergency vehicles, etc."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set5.set5Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.traffic_outlined),
            title: const Text("Unit 6: Traffic at intersections, railroad crossings"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set6.set6Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.speed),
            title: const Text("Unit 7: Safe speed and following distance"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set7.set7Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.directions_walk),
            title: const Text("Unit 8: Pedestrian protection, etc."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set8.set8Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text("Unit 9: Safety checks, signals, and use of alarms"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set9.set9Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.alt_route),
            title: const Text("Unit 10: Change of course, etc."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set10.set10Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.change_circle),
            title: const Text("Unit 11: Overtaking/Misdirection"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set11.set11Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.receipt_long),
            title: const Text("Unit 12: Driver's license system, traffic violation notification system"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set12.set12Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.car_rental),
            title: const Text("Unit 13: Driving an automatic car, etc."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set13.set13Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.visibility),
            title: const Text("Unit 14: Blind Spots and Driving, Human Ability and Driving"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set14.set14Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.nature_people),
            title: const Text("Unit 15: The Power of Nature and Driving in Cars"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set15.set15Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.cloud),
            title: const Text("Unit 16: Driving under adverse conditions"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set16.set16Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.build),
            title: const Text("Unit 17: Maintenance and management of automobiles"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set17.set17Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.local_parking),
            title: const Text("Unit 18: Parking and Stopping"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set18.set18Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: const Text("Unit 19: Boarding, loading, and towing"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set19.set19Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.announcement),
            title: const Text("Unit 20: In the event of a traffic accident, what to know about car owners, etc., and the insurance system"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set20.set20Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text("Unit 21: Driving on the highway"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set21.set21Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.eco),
            title: const Text("Unit 22: Environment and driver's health"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set22.set22Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.warning),
            title: const Text("Unit 23: Special cases of driving cars"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set23.set23Questions)),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lightbulb),
            title: const Text("Unit 24: Other knowledge"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(questions: set24.set24Questions)),
              );
            },
          ),
        ],
      ),
    );
  }
}
