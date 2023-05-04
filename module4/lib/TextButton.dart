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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text(
                "Materi Flat Button", 
                style: TextStyle(
                    color: Colors.red
                ),
                ),
              onPressed: (){
                setState((){
                  text="Flat Button Ditekan";
                });
              },
            ),
            Text(text, textScaleFactor: 2,),
          ],
          
        ),
      ),

    );

  }
}
