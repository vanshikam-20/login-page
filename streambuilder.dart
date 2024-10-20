import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StreamBuilder Toggle Example'),
        ),
        body: ToggleSwitch(),
      ),
    );
  }
}

class ToggleSwitch extends StatefulWidget {
  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  final _streamController = StreamController<bool>();
  bool _isOn = false;

  void _toggleSwitch() {
    _isOn = !_isOn;
    _streamController.sink.add(_isOn);
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<bool>(
        stream: _streamController.stream,
        initialData: _isOn,
        builder: (context, snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: snapshot.data!,
                onChanged: (value) {
                  _toggleSwitch();
                
                },
              ),
              Text(snapshot.data! ? 'Student is present' : 'Student is absent'),
            ],
          );
        },
      ),
    );
  }
}
