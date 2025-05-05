import 'package:flutter/material.dart';
const url = "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Center(
          child: Image.network(url,width: 100,height: 100,)
        ),
      ),
    ),
  );
}
