import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/match_details': (context) => MatchDetailsScreen(homeTeam: '', awayTeam: '', score: '',),
      },
    );
  }
}

// ... Rest of your code

class MatchDetailsScreen extends StatelessWidget {
  final String homeTeam;
  final String awayTeam;
  final String score;

  MatchDetailsScreen({
    required this.homeTeam,
    required this.awayTeam,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '$homeTeam $score $awayTeam',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Add other widgets for match details here
        ],
      ),
    );
  }
}
