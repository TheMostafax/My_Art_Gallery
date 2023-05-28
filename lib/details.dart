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
              'Explore my artworks here with more details for each image by clicking on it.',
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
