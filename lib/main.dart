import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Center(
          child: Text("Hello Flutter",style: TextStyle(fontSize: 30.0), textDirection: TextDirection.ltr),
        ),
      ),
    ),
  );
}
