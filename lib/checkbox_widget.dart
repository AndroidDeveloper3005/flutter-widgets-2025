import 'package:flutter/material.dart';

enum Gender { male, female }

class Checkbox_Radio_Widget extends StatefulWidget {
  const Checkbox_Radio_Widget({super.key});

  @override
  State<Checkbox_Radio_Widget> createState() => _Checkbox_Radio_WidgetState();
}

class _Checkbox_Radio_WidgetState extends State<Checkbox_Radio_Widget> {
  bool _isCheck = false;
  Gender gender = Gender.male;
  final countries = ["Bangladesh", "China", "India", "USA"];
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox Widget")),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: _isCheck,
                    onChanged: (value) {
                      setState(() {
                        _isCheck = value!;
                        print(_isCheck);
                      });
                    },
                  ),
                  Text("Flutter"),
                ],
              ),
              Column(
                children: [
                  Radio<Gender>(
                    value: Gender.male,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                        print(gender);
                      });
                    },
                  ),
                  Text("Male"),
                  Radio<Gender>(
                    value: Gender.female,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                        print(gender);
                      });
                    },
                  ),
                  Text("Female"),
                ],
              ),
              DropdownButton<String>(
                isExpanded: true,
                hint: Text("Select your country."),
                value: country,
                items:
                    countries
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    country = value!;
                  });

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
