import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.blueAccent,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(30),
                    duration: Duration(seconds: 3),
                    content: Row(
                      children: [
                        Text('WELLCOME TO HOMEPAGE'),
                        Icon(Icons.verified),
                      ],
                    ),
                  ),
                );
              },
              child: const Text('TAP HERE'),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("hi iam jarvis may i help you ?"),
                              const Text(
                                  "if you not intersted ! click the close button"),
                              Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "close",
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                ),
                              )
                            ]),
                      );
                    });
              },
              child: const Text("BOTTOM SHEET"),
            )
          ],
        ),
      ),
    );
  }
}
