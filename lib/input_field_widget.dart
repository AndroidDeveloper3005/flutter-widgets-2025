import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFieldWidget extends StatefulWidget {
  const InputFieldWidget({super.key});

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Widget")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                //hintText: "Enter your name.",
                label: Text(
                  "Enter your name.",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  print(nameController.text);
                },
                child: Text("Ok"))
          ],
        ),
      ),
    );
  }
}
