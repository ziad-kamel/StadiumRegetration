import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multimedia/audio.dart';
import 'package:multimedia/favoritpage.dart';
import 'package:multimedia/profilepage.dart';
import 'package:multimedia/stadiumpage.dart';
import 'package:multimedia/video.dart';

import 'stadiumspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AudioPlayer _audioPlayer;

  //variables
  int counter = 0;
  int crtIndex = 0;

  List<Widget> bottomPages = [
    StadiumsPage(),
    FavoritePage(),
    ProfilePage(),
    video(),
    audio()
  ];

  //functions
  void my() {
    final player = AudioPlayer();
    player.play(DeviceFileSource('images/3.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(106, 143, 174, 233),
          title: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0, left: 0),
                child: Icon(
                  Icons.sports_soccer,
                  size: 30,
                ),
              ),
              Text(
                "Champions",
                style: TextStyle(
                  color: Color.fromARGB(176, 1, 112, 55),
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                ),
              ),
            ],
          )),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(106, 143, 174, 233),
        width: 200,
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  color: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Facebook',
                      style: TextStyle(color: Colors.blue, fontSize: 19.5),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: TextButton(
                onPressed: () {},
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue.shade200,
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Twitter',
                      style: TextStyle(
                          color: Colors.blue.shade200, fontSize: 19.5),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: TextButton(
                onPressed: () {},
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.pink[600],
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Instagram',
                      style: TextStyle(color: Colors.pink[600], fontSize: 19.5),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: TextButton(
                onPressed: () {},
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.blue[900],
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'LinkedinIn',
                      style: TextStyle(color: Colors.blue[900], fontSize: 19.5),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Whatsapp',
                      style: TextStyle(color: Colors.green, fontSize: 19.5),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: TextButton(
                onPressed: () {},
                child: Row(children: [
                  Icon(
                    Icons.mail_outline_sharp,
                    color: Colors.red[700],
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Mail',
                      style: TextStyle(color: Colors.red[700], fontSize: 19.5),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 315, 10, 0),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Text('Contact us', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: bottomPages[crtIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(106, 149, 143, 233),
        items: [
          BottomNavigationBarItem(
              label: 'Stadiums',
              icon: Icon(
                Icons.stadium_outlined,
                color: Colors.green[800],
              )),
          BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Icons.favorite_border,
                color: Colors.redAccent[400],
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person_outline,
                color: Colors.blue[700],
              )),
          BottomNavigationBarItem(
              label: 'video',
              icon: Icon(
                Icons.play_arrow_sharp,
                color: Colors.red[900],
              )),
          BottomNavigationBarItem(
              label: 'audio',
              icon: Icon(
                Icons.music_note,
                color: Colors.red[900],
              )),
        ],
        currentIndex: crtIndex,
        onTap: (int index) {
          setState(() {
            crtIndex = index;
          });
        },
      ),
    );
  }
}
