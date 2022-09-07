import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('profile_photo.jpg'),
              ),
              Text(
                'Rohan Bhande',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sour',
                  letterSpacing: 2.5,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              Text(
                '______________________',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+917066442676',
                      style: TextStyle(letterSpacing: 1.0, color: Colors.teal),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email_sharp,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'whoseunassailable@gmail.com',
                      style: TextStyle(letterSpacing: 1.0, color: Colors.teal),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
