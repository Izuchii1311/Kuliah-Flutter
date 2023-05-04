import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      title: "Latihan Flat Button di Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(  
      appBar: AppBar(
        title: Text("Button in Flutter"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[100],

      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.amber,
            primary: Colors.red,
            shadowColor: Colors.grey[100],
            elevation: 20,
            ),
          onPressed: () { 
            //
           },
          child: Text('New Outlined Button'),
        ),
      ),

    );

  }
}
