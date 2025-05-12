import 'package:flutter/material.dart';


const imageUrl01 =
    "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds";
const imageUrl02 =
    "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds";
const imageUrl03 =
    "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds";
const imageUrl04 =
    "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds";
const description =
'''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _imageSection(),
            _headerSection(),
            _navigationSection(),
            _bodySection(),
          ],
        ),
      ),
    );
  }
}

class _bodySection extends StatelessWidget {
  const _bodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(description, style: TextStyle(fontSize: 14.0));
  }
}

class _navigationSection extends StatelessWidget {
  const _navigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.phone, color: Colors.amber, size: 20),
            Text("Call", style: TextStyle(fontSize: 14.0)),
          ],
        ),
        Column(
          children: [
            Icon(Icons.route, color: Colors.amber, size: 20),
            Text("Route", style: TextStyle(fontSize: 14.0)),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share, color: Colors.amber, size: 20),
            Text("Share", style: TextStyle(fontSize: 14.0)),
          ],
        ),
      ],
    );
  }
}

class _headerSection extends StatelessWidget {
  const _headerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text("Bandroband", style: TextStyle(fontSize: 25.0)),
            Text("bangladesh", style: TextStyle(fontSize: 14.0)),
          ],
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            Text("41", style: TextStyle(fontSize: 14.0)),
          ],
        ),
      ],
    );
  }
}

class _imageSection extends StatefulWidget {
  const _imageSection({super.key});

  @override
  State<_imageSection> createState() => _imageSectionState();
}

class _imageSectionState extends State<_imageSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          imageUrl01,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              "Bangladesh Love",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: -35,
          left: 10,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, size: 50, color: Colors.amber),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          //left: 10,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_next, size: 50, color: Colors.amber),
            ),
          ),
        ),
        Positioned(
          //right: 10,
          bottom: 10,
          left: 10,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_before, size: 50, color: Colors.amber),
            ),
          ),
        ),
      ],
    );
  }
}