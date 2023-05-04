import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // Judul Halaman
    return MaterialApp(
      title: "Latihan Flutter Widget Text 3",
      
    home: Scaffold(
      backgroundColor: Colors.grey[100],

      // Judul di Nav Bar
      appBar: AppBar(
        title: Text(
          "Aplikasi Flutter Widget Dasar(Text)",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.red,
            fontSize: 36
          ),
          children: <TextSpan>[
            TextSpan(
              text: "Belajar Flutter1.", 
              style: TextStyle(
                color: Colors.black,
                fontSize: 36
              )
            ),
            TextSpan(
              text: "Mobile Programming",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 20,
                fontStyle: FontStyle.italic
              )
            ),
            TextSpan(
              text: "Belajar Flutter dan Bahasa Dart",
              style: TextStyle(
                color: Colors.red,
                fontSize: 26,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold
              )
            )
          ]
          
        ),
      ),
      
    ),
    );

  }
}