import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(1000, (index) => "Item ${index + 1}");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),

        backgroundColor: Color(0xFFB12525),
      ),

      /*body: ListView(
        children: items.map((e) => Text(e)).toList()
      ), */
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            tileColor:  index.isEven ? Colors.grey : Colors.grey[300],
            title: Text("item ${index + 1 }"),
            subtitle: Text("item sub title ${index + 1}"),
          ),
        ),
      ),
    );
  }
}
