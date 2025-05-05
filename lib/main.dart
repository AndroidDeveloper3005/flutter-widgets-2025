import 'package:flutter/material.dart';
const url = "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds";
const description = '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(url,width: double.infinity,height: 250,fit: BoxFit.cover,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Bandroband",style: TextStyle(fontSize: 25.0)),
                    Text("bangladesh",style: TextStyle(fontSize: 14.0))
                  ],
                ),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.amber,size: 20,),
                  Text("41",style: TextStyle(fontSize: 14.0))
                ],
              ),
            ],),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone,color: Colors.amber,size: 20,),
                    Text("Call",style: TextStyle(fontSize: 14.0))
                  ],
                ),                Column(
                  children: [
                    Icon(Icons.route,color: Colors.amber,size: 20,),
                    Text("Route",style: TextStyle(fontSize: 14.0))
                  ],
                ),                Column(
                  children: [
                    Icon(Icons.share,color: Colors.amber,size: 20,),
                    Text("Share",style: TextStyle(fontSize: 14.0))
                  ],
                ),
              ],
            ),

            Text(description,style: TextStyle(fontSize: 14.0))
          ],
        ),
      ),
    ),
  );
}
