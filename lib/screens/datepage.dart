import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDateScreen extends StatefulWidget {
  const MyDateScreen({super.key});

  @override
  State<MyDateScreen> createState() => _MyDateScreenState();
}

class _MyDateScreenState extends State<MyDateScreen> {
  DateTime selectDate = DateTime.now();
  TimeOfDay selectTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(selectTime.toString()),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: selectDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.light(useMaterial3: true),
                        child: child!,
                      );
                    }).then((value) {
                  setState(() {
                    selectDate = value!;
                  });
                });
              },
              child: const Text("click here"),
            ),
            ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: selectTime
                  
                  
                  );
                },
                child: const Text('SHOW TIME'))
          ],
        ),
      ),
    );
  }
}
