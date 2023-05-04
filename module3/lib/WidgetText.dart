import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Latihan Flutter Module 3",
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Aplikasi Flutter Widget Dasar (Text)"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: Text("Selamat Pagi"),
        ),
      ),
    );
  }
}