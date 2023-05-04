import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({Key? key}) : super(key: key);
  String _title = "TextForm Field";
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // Menghilangkan watermark debug
      debugShowCheckedModeBanner: false,

      title: _title,

      home: Scaffold(

        appBar: AppBar(
          title: Text(_title),
        ),

        body: HomePage(),

      ),

    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16
          ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your Username here...',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16
          ),
        child: TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            hintText: 'Enter your Username here...',
            ),
          ),
        ),
      ],  


    );
  }
}