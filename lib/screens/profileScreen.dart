import 'package:flutter/material.dart';
import 'package:games_and_archives/screens/loginScreen.dart';
import 'package:games_and_archives/screens/recordingScreen.dart';
import 'package:games_and_archives/screens/gamesScreen.dart';
import 'package:games_and_archives/screens/archivesScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _showDrawer();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('lib/assets/images/nathan.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'Nathan Drake',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Software Developer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Hi, I'm Nathan. I'm going to provide you with information about games, which is my speciality. You can access the pages you want to go to via the menu icon. If you don't want to use the icon, I've added a button for you. Welcome to Games and Archives, user.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GamesScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Container(
              width: 200,
              height: 50,
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDrawer() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.login),
                title: Text('Login Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Recording Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RecordingScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.gamepad),
                title: Text('Games Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => GamesScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text('Archives Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ArchivesScreen()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
