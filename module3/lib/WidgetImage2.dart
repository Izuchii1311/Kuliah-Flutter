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
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbWHkPVQO5PM_Pc9LgLqlu_M52q_r-G9fkSA&usqp=CAU"),
        )
      ),
    );
  }
}