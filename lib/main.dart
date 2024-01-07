import 'package:flutter/material.dart';
import 'package:flutter_medium/screens/bottomnav.dart';
import 'package:flutter_medium/screens/demofile.dart';
import 'package:flutter_medium/screens/dropdownbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyNav(),
    );
  }
}
