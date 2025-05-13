import 'package:flutter/material.dart';
import 'package:widgets/counter_app.dart';
import 'package:widgets/home_page.dart';
import 'package:widgets/input_field_widget.dart';

import 'checkbox_widget.dart';

class MenuPages extends StatelessWidget {
  const MenuPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB12525),
        title: Text("Menu Page"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("Go Home"),
            ),
            ElevatedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterApp()),
                );
              },
              child: Text("Counter App Page"),
            ),
            ElevatedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputFieldWidget()),
                );
              },
              child: Text("Input Field Widget"),
            ),
            ElevatedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkbox_Radio_Widget()),
                );
              },
              child: Text("CheckBox & Radio Widget"),
            ),
          ],
        ),
      ),
    );
  }
}
