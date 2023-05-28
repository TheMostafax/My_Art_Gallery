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
            'About the artist',
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
