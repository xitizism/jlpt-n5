import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  late Map<String, int?> lastScores;

  @override
  void initState() {
    super.initState();
    lastScores = {};
    loadLastScores();
  }

  Future<void> loadLastScores() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = [
      'lastScore_set1',
      'lastScore_set2',
      'lastScore_set3',
      'lastScore_set4',
      'lastScore_set5',
      'lastScore_set6',
      'lastScore_set7',
      'lastScore_set8',
      'lastScore_set9',
      'lastScore_set10',
      'lastScore_set11',
      'lastScore_set12',
      'lastScore_set13',
      'lastScore_set14',
      'lastScore_set15',
      'lastScore_set16',
      'lastScore_set17',
      'lastScore_set18',
      'lastScore_set19',
      'lastScore_set20',
      'lastScore_set21',
      'lastScore_set22',
      'lastScore_set23',
      'lastScore_set24',
    ];
    for (var key in keys) {
      lastScores[key] = prefs.getInt(key);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Scores'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildScoreTile("Unit 1: Driver's Knowledge", 'lastScore_set1'),
          buildScoreTile("Unit 2: Obey the signals", 'lastScore_set2'),
          buildScoreTile("Unit 3: Obey signs, markings, etc.", 'lastScore_set3'),
          buildScoreTile("Unit 4: Where cars pass, where cars shouldn't", 'lastScore_set4'),
          buildScoreTile("Unit 5: Priority for emergency vehicles, etc.", 'lastScore_set5'),
          buildScoreTile("Unit 6: Traffic at intersections, railroad crossings", 'lastScore_set6'),
          buildScoreTile("Unit 7: Safe speed and following distance", 'lastScore_set7'),
          buildScoreTile("Unit 8: Pedestrian protection, etc.", 'lastScore_set8'),
          buildScoreTile("Unit 9: Safety checks, signals, and use of alarms", 'lastScore_set9'),
          buildScoreTile("Unit 10: Change of course, etc.", 'lastScore_set10'),
          buildScoreTile("Unit 11: Overtaking/Misdirection", 'lastScore_set11'),
          buildScoreTile("Unit 12: Driver's license system, traffic violation notification system", 'lastScore_set12'),
          buildScoreTile("Unit 13: Driving an automatic car, etc.", 'lastScore_set13'),
          buildScoreTile("Unit 14: Blind Spots and Driving, Human Ability and Driving", 'lastScore_set14'),
          buildScoreTile("Unit 15: The Power of Nature and Driving in Cars", 'lastScore_set15'),
          buildScoreTile("Unit 16: Driving under adverse conditions", 'lastScore_set16'),
          buildScoreTile("Unit 17: Maintenance and management of automobiles", 'lastScore_set17'),
          buildScoreTile("Unit 18: Parking and Stopping", 'lastScore_set18'),
          buildScoreTile("Unit 19: Boarding, loading, and towing", 'lastScore_set19'),
          buildScoreTile("Unit 20: In the event of a traffic accident, what to know about car owners, etc., and the insurance system", 'lastScore_set20'),
          buildScoreTile("Unit 21: Driving on the highway", 'lastScore_set21'),
          buildScoreTile("Unit 22: Environment and driver's health", 'lastScore_set22'),
          buildScoreTile("Unit 23: Special cases of driving cars", 'lastScore_set23'),
          buildScoreTile("Unit 24: Other knowledge", 'lastScore_set24'),
        ],
      ),
    );
  }

  Widget buildScoreTile(String title, String scoreKey) {
    final score = lastScores[scoreKey];
    final scoreText = (score != null) ? 'Last Score: $score' : 'Not yet tried';
    return Column(
      children: [
        ListTile(
          title: Text(title),
          subtitle: Text(scoreText),
        ),
        const Divider(),
      ],
    );
  }
}
