import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Widget Image",

      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          title: Text(
            "Aplikasi Flutter Widget Dasar (Image)",
            style: TextStyle(
              fontWeight: FontWeight.bold
              ),
            ),
            backgroundColor: Colors.brown,
        ),

        body: Center(
          child: Image.asset('assets/img/Columbina.png'),
        )
      ),
    );
  }
}