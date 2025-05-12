import 'package:flutter/material.dart';
import 'package:widgets/list_view_example.dart';
import 'package:widgets/menu_pages.dart';

import 'grid_view_example.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: MenuPages()
    );
  }
}




