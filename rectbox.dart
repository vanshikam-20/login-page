// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HEY RECT BOX"),
          
        ),
        body: Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(color: Colors.green,width: 33,),
            borderRadius:BorderRadius.circular(22),

          ),
          child: Center(
            child: Text("HEY IMMA RADIUS",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 33
            ),
            ),
          ),
        ),
      ),
    );
  }
}