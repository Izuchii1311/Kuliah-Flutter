import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      // Judul Project
      title: "Latihan Widget Text Ke-2",

      // Halaman Utama
      home: Scaffold(
        backgroundColor: Colors.grey[100],

        // App Bar dan Judulnya
        appBar: AppBar(
          title: Text(
            "Aplikasi Flutter Widget Dasar (Text)",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.deepOrange,
        ),

        // Body dari Halaman Utama
        body: Center(
          child: Column(children: <Widget>[

            // Container 1 dan Text 1
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Saya Belajar Flutter.",
                style: TextStyle(
                  fontFamily: "Font1", fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),

              // Container 2 dan Text 2
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "STMIK AMIK BANDUNG",
                style: TextStyle(
                  fontFamily: "Font1", fontSize: 20, fontWeight: FontWeight.normal
                ),
              ),
            )

          ]),
        ),
        
      ),
    );
  }
}