import 'package:flutter/material.dart';
import 'package:games_and_archives/screens/profileScreen.dart';

class RecordingScreen extends StatelessWidget {
  const RecordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Icon(
              Icons.person_add,
              color: Colors.purple,
            ),
            SizedBox(width: 8),
            Text(
              'Record screen',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context); 
            },
            icon: Icon(
              Icons.arrow_back, 
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/duvar6.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/assets/images/kayit2.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your e-mail address',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                primary: Colors.purple,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Text(
                  'Register ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
