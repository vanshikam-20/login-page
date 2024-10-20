import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Button Example'),
        ),
        body: Column(
          children: [
            RadioListTile<int>(
              title: Text('Option 1'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Option 2'),
              value: 2,
              groupValue: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
