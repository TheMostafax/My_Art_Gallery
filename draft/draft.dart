/*
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Me extends StatefulWidget {
  @override
  _Me createState() => _Me();
}

class _Me extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 7, 29),
        appBar: AppBar(
          title: Text(
            'About the Artist',
            style: TextStyle(
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/me.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Mostafa Hassan',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 251, 255, 0),
                    fontFamily: 'Times new roman'),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Text(
                'Skills',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 238, 0),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.desktop_mac, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        'Web Development',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.phone_android, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        'Mobile Development',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Text(
                'Contact Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email: mh1546226@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  launch('https://github.com/TheMostafax');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/git.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5),
                    Text('GitHub', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  launch('https://instagram.com/');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/insta.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5),
                    Text('Instagram', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  launch('https://linkedin.com/');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/in.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5),
                    Text('LinkedIn', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
-----------------------------------------------------------------------------------
import 'package:flutter/material.dart';

import 'eren.dart';

import 'gojo.dart';

import 'killua.dart';

import 'makirize.dart';

import 'naruto.dart';

import 'guko.dart';

import 'sukuna.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _Details createState() => _Details();
}

class _Details extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 7, 29),
      appBar: AppBar(
        title: Text(
          'My Gallery Details',
          style: TextStyle(
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 213, 7),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Explore my artwork here with more details for each images by clicking on the image.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'My Art Gallery Images',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 213, 7),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Killua(imagePath: 'assets/1.jpg')));
                    },
                    child: Image.asset(
                      'assets/1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Gojo(imagePath: 'assets/2.jpg')));
                    },
                    child: Image.asset(
                      'assets/2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Sukuna(imagePath: 'assets/3.jpg')));
                    },
                    child: Image.asset(
                      'assets/3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Eren(imagePath: 'assets/4.jpg')));
                    },
                    child: Image.asset(
                      'assets/4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Guko(imagePath: 'assets/5.jpg')));
                    },
                    child: Image.asset(
                      'assets/5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Naruto(imagePath: 'assets/6.jpg')));
                    },
                    child: Image.asset(
                      'assets/6.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Maki(imagePath: 'assets/7.jpg')));
                    },
                    child: Image.asset(
                      'assets/7.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
-----------------------------------------------------------------------------------
import 'package:flutter/material.dart';

import 'package:my_art_gallery/ui/theme/color.dart';

import 'package:url_launcher/url_launcher.dart';

import 'details.dart';

import 'about.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                                  'Hi there, This is a simple Art Gallery using Flutter. I made it to show some of my arts here using dart language and flutter to visualize the app.',
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
  String _selectedOption = 'Images with Descriptions';
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
              color: Colors.white, // Set border color to white
              width: 2, // Set border width to 2 pixels
            ),
            borderRadius:
                BorderRadius.circular(20), // Set border radius to 10 pixels
          ),
          child: DropdownButton(
            value: _selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                _selectedOption = newValue!;
                if (_selectedOption == 'Gallery with details') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                } else if (_selectedOption == 'About the artist') {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Me()));
                }
              });
            },
            style: TextStyle(
              color: Colors.yellow, // Set text color to yellow
            ),
            dropdownColor: Colors.grey[900],
            iconEnabledColor: Colors.white, // Set icon color to white
            underline: Container(
              height: 0,
              color: Colors.white, // Set border color to white
            ),
            items: <String>[
              'Images with Descriptions',
              'Gallery with details',
              'About the artist'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.yellow, // Set text color to yellow
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
-----------------------------------------------------------------------------------
import 'package:flutter/material.dart';

import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Art Gallery',
    debugShowCheckedModeBanner: false,
    home: LoadingScreen(),
  ));
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/load.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text(
                  'Welcome to My Art Gallery',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(0, 0, 0, 0),
        child: Container(
          height: 60.0,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Click here to watch',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontFamily: 'Times New Roman',
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                backgroundColor: Colors.grey,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward),
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                ),
                elevation: 0.0,
              ),
            ],
          ),
        ),
        elevation: 0.0,
      ),
    );
  }
}
-----------------------------------------------------------------------------------
import 'package:flutter/material.dart';

import 'package:my_art_gallery/ui/theme/color.dart';

import 'package:url_launcher/url_launcher.dart';

import 'details.dart';

import 'about.dart';

class MyAppp extends StatelessWidget {
  const MyAppp({Key? key}) : super(key: key);

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
              color: Colors.white, // Set border color to white
              width: 2, // Set border width to 2 pixels
            ),
            borderRadius:
                BorderRadius.circular(20), // Set border radius to 10 pixels
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
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'home.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'My Art Gallery',
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/load.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text(
                'Welcome to My Art Gallery',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontFamily: 'Times New Roman',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
            ),
            Text(
              'My Art Gallery',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Times New Roman',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAppp()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black),
                ),
              ),
              child: Text('Watch now!'),
            ),
          ],
        ),
      ),
    );
  }
}
*/
