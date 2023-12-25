import 'package:flutter/material.dart';
import 'package:games_and_archives/screens/archivesScreen.dart';
import 'package:games_and_archives/screens/gamesScreen.dart';
import 'package:games_and_archives/screens/loginScreen.dart';
import 'package:games_and_archives/screens/profileScreen.dart';
import 'package:games_and_archives/screens/recordingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', 
      routes: {
        '/login': (context) => LoginScreen(),
        '/recording': (context) => RecordingScreen(),
        '/profile': (context) => ProfileScreen(),
        '/games': (context) => GamesScreen(),
        '/archives': (context) => ArchivesScreen(),
      },
    );
  }
}

