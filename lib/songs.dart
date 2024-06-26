import 'package:flutter/material.dart';

class SongsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Songs',
            style: TextStyle(color: Colors.blueAccent),
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'ALL SONGS'),
              Tab(text: 'ALBUMS'),
              Tab(text: 'VIDEOS'),
              Tab(text: 'MEDITATION'),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/12.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: TabBarView(
            children: [
              SongList(),
              Center(
                  child: Text('ALBUMS', style: TextStyle(color: Colors.white))),
              Center(
                  child: Text('VIDEOS', style: TextStyle(color: Colors.white))),
              Center(
                  child: Text('MEDITATION',
                      style: TextStyle(color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}

class SongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SongItem(title: 'Amazing Grace', subtitle: 'Hymn'),
      SongItem(title: 'How Great Thou Art', subtitle: 'Hymn'),
      SongItem(title: 'In Christ Alone', subtitle: 'Christian Song'),
      SongItem(title: 'What a Beautiful Name', subtitle: 'Worship Song'),
      SongItem(
          title: '10,000 Reasons (Bless the Lord)', subtitle: 'Worship Song'),
      SongItem(title: 'Oceans (Where Feet May Fail)', subtitle: 'Worship Song'),
      SongItem(title: 'Great Are You Lord', subtitle: 'Worship Song'),
      SongItem(title: 'Way Maker', subtitle: 'Worship Song'),
      SongItem(title: 'How Great Is Our God', subtitle: 'Worship Song'),
    ]);
  }
}

class SongItem extends StatelessWidget {
  final String title;
  final String subtitle;

  SongItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.music_note, color: Colors.white),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: IconButton(
        icon: Icon(Icons.play_arrow, color: Colors.blue),
        onPressed: () {},
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      tileColor: Colors.black,
    );
  }
}
