import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropDownScreen extends StatefulWidget {
  const MyDropDownScreen({super.key});

  @override
  State<MyDropDownScreen> createState() => _MyDropDownScreenState();
}

class _MyDropDownScreenState extends State<MyDropDownScreen> {
  var alldetailslist = ["MALAYALAM", "HINDI", "KANADA", "ENGLISH", "TAMIL"];
  var currentdata = "MALAYALAM";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          style: const TextStyle(color: Colors.blue),
          items: alldetailslist.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),
            );
          }).toList(),
          onChanged: (String? newValueSelected) {
            setState(() {
              currentdata = newValueSelected!;
            });
          },
          value: currentdata,
        ),
      ),
    );
  }
}
