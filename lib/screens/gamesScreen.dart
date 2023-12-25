import 'package:flutter/material.dart';
import 'package:games_and_archives/screens/archivesScreen.dart';
import 'package:games_and_archives/screens/profileScreen.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Icon(
                Icons.sports_esports,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GAMES',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4), 
                Text(
                  'Explore Exciting Games',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200], 
              child: Center(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 24.0,
                    mainAxisSpacing: 24.0,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    String imageName = ['gow.webp', 're.png', 'spider.jpg', 'unc.jpg', 'tlou2.webp', 'horizon.jpg', 'valhalla.jpg', 'call.jpg'][index];
                    String imagePath = 'lib/assets/images/$imageName';

                    return Container(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Image.asset(
                          imagePath,
                          width: 250,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArchivesScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 115, 124, 128), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Text(
                'Go To Archives',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
