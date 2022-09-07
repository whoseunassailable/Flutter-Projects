import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: Colors.blueGrey[700],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://wallpapercave.com/wp/wp11160708.jpg'),
          ),
        ),
      ),
    ),
  );
}
