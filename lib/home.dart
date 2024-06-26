import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AMusicBibleHomePage extends StatefulWidget {
  @override
  _AMusicBibleHomePageState createState() => _AMusicBibleHomePageState();
}

class _AMusicBibleHomePageState extends State<AMusicBibleHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to Home
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        // Navigate to SongsScreen
        Navigator.pushNamed(context, '/songs');
        break;
      case 2:
        // Navigate to About Us
        Navigator.pushNamed(context, '/about');
        break;
      case 3:
        // Navigate to Share
        Navigator.pushNamed(context, '/share');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'aMusicBible',
          style: TextStyle(color: Colors.blueAccent),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.power_settings_new, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/12.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'The History Creators\nTGCN in FIRST OF ITS KIND IN THE HISTORY,\nA Book of THE HOLY BIBLE\nin the form of Sound of Music',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.yellow,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'For the first time in world history, the Holy Bible is available in audio and music format....',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.yellow,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SectionTitle(title: 'HOT RECOMMENDED'),
                    RecommendationRow(),
                    SectionTitle(title: 'RECENT SONGS'),
                    RecommendationRow(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note, color: Colors.white),
            label: 'SONGS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.white),
            label: 'ABOUT US',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share, color: Colors.white),
            label: 'SHARE',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class RecommendationRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          RecommendationCard(
              title: 'VAAZHVU THARUM', subtitle: 'Words that Give Life'),
          RecommendationCard(title: 'BOOK OF E', subtitle: 'Life Lesson'),
          RecommendationCard(title: 'SONG 3', subtitle: 'Subtitle 3'),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final String title;
  final String subtitle;

  RecommendationCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[900]?.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
