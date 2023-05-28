import 'package:flutter/material.dart';

import 'package:my_art_gallery/ui/theme/color.dart';

import 'package:url_launcher/url_launcher.dart';

import 'details.dart';

import 'about.dart';

class MyAppp extends StatefulWidget {
  const MyAppp({Key? key}) : super(key: key);

  @override
  _MyAppp createState() => _MyAppp();
}

class _MyAppp extends State<MyAppp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Art Gallery',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Art Gallery',
            style: TextStyle(
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: Colors.black,
          actions: [
            Container(
              width: 50,
              height: 50,
              child: IconButton(
                icon: Image.asset('assets/mh.png'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(20),
                              child: AnimatedOpacity(
                                opacity: 1.0,
                                duration: Duration(seconds: 2),
                                curve: Curves.easeIn,
                                child: Text(
                                  'Hi there, This is a simple Art Gallery. I made it to show some of my artworks here using Flutter.',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 16,
                                    fontFamily: 'ShelleyVolante BT',
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dark.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            galleryscreen(),
          ],
        ),
      ),
    );
  }
}

class galleryscreen extends StatefulWidget {
  const galleryscreen({Key? key}) : super(key: key);

  @override
  _galleryscreenState createState() => _galleryscreenState();
}

class _galleryscreenState extends State<galleryscreen> {
  String _selectedOption = 'Images with descriptions';
  List<Map<String, dynamic>> artworks = [
    {
      'image': 'assets/1.jpg',
      'description':
          'Killua is one of the main characters of Yoshihiro Togashis Hunter x Hunter series Introduced in the Hunter Exam arc as one of the competitors, he went on to become great friends with Gon, the main character of the story. ',
      'isLiked': false,
    },
    {
      'image': 'assets/2.jpg',
      'description':
          'Satoru Gojo is a fictional character from Gege Akutamis manga Jujutsu Kaisen. He was first introduced in Akutamis short series Tokyo Metropolitan Curse Technical School as the mentor of the cursed teenager Yuta Okkotsu at Tokyo Prefectural Jujutsu High School.',
      'isLiked': false,
    },
    {
      'image': 'assets/3.jpg',
      'description':
          'Ryomen Sukuna is a fictional character and the main antagonist of the manga series Jujutsu Kaisen created by Gege Akutami. A Cursed Spirit born out of the negative emotions flowing from humans, he was once known as the King of Curses over a thousand years ago, the undisputed most powerful Cursed Spirit of all time',
      'isLiked': false,
    },
    {
      'image': 'assets/4.jpg',
      'description':
          'Eren Yeager, named Eren Jaeger is a fictional character and the protagonist of the manga series Attack on Titan created by Hajime Isayama',
      'isLiked': false,
    },
    {
      'image': 'assets/5.jpg',
      'description':
          'Son Goku, born Kakarot, is a male Saiyan and the main protagonist of the Dragon Ball metaseries created by Akira Toriyama.',
      'isLiked': false,
    },
    {
      'image': 'assets/6.jpg',
      'description':
          'Naruto Uzumaki is the titular protagonist of the manga Naruto, created by Masashi Kishimoto. As the series progresses, he is a young ninja from the fictional village of Konohagakure',
      'isLiked': false,
    },
    {
      'image': 'assets/7.jpg',
      'description':
          'Maki Zenin is a fictional character from Gege Akutamis manga Jujutsu Kaisen 0 She is a young student from Jujutsu High, mentored by Satoru Gojo. While working on missions involving Curses, Maki mentors the newcomer Yuta Okkotsu who is trying to control the undead Rika which is attacking innocent people. and Rize Kamishiro (神代 利世, Kamishiro Rize) was a ghoul and the foster daughter of Matasaka Kamishiro. Born into the Washuu Clan, Rize was the illegitimate daughter of former CCG chairman Tsuneyoshi Washuu, where, as a child, she escaped from the clan and organization V.',
      'isLiked': false,
    },
  ];

  late List<bool> showDescription;

  @override
  void initState() {
    super.initState();
    showDescription = List.filled(artworks.length, false);
  }

  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: DropdownButton<String>(
            value: _selectedOption,
            icon: const Icon(Icons.arrow_downward),
            dropdownColor: Colors.grey[900],
            iconEnabledColor: Colors.white,
            underline: Container(
              height: 0,
              color: Colors.white,
            ),
            onChanged: (String? newValue) {
              setState(() {
                _selectedOption = newValue!;
                if (_selectedOption == 'Gallery with details') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details()),
                  );
                } else if (_selectedOption == 'About the artist') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Me()),
                  );
                } else if (_selectedOption == 'Images with descriptions') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => galleryscreen()),
                  );
                }
              });
            },
            items: <String>[
              'Images with descriptions',
              'Gallery with details',
              'About the artist'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: artworks.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showDescription[index] = !showDescription[index];
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(double.infinity),
                        child: Image.asset(
                          artworks[index]['image']!,
                          width: boardWidth - 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: showDescription[index],
                      child: Text(
                        artworks[index]['description']!,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showDescription[index] =
                                    !showDescription[index];
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              showDescription[index]
                                  ? 'Hide Description'
                                  : 'Show Description',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                artworks[index]['isLiked'] =
                                    !artworks[index]['isLiked'];
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              elevation: 100,
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: artworks[index]['isLiked']
                                  ? Colors.red
                                  : Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
