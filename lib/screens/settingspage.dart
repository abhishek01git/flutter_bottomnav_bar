import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  String dropdownValue = 'HINDI';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.menu),
          style: const TextStyle(color: Colors.blue),
          underline: Container(
            height: 2,
            color: Colors.amber,
          ),
          onChanged: (String? newvalue) {
            setState(() {
              dropdownValue = newvalue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: "HINDI",
              child: Text("HINDI"),
            ),
            DropdownMenuItem<String>(
              value: "MALAYALAM",
              child: Text("MALAYALAM"),
            ),
            DropdownMenuItem<String>(
              value: "ENGLISH",
              child: Text("ENGLISH"),
            ),
            DropdownMenuItem<String>(
              value: "TAMIL",
              child: Text("TAMIL"),
            ),
            DropdownMenuItem<String>(
              value: "KANADA",
              child: Text("KANADA"),
            ),
          ],
        ),
      ),
    );
  }
}
