import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      title: "Latihan Elevated Button di Flutter",
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
        title: Text("Latihan Floating Button di Flutter"),
        backgroundColor: Colors.green[100],
      ),
      backgroundColor: Colors.amberAccent[100],

      body: Center(
        child: Text("Tekan Floating Button di bawah ini"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Ketika ditekan maka lakukan fungsi berikut
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.navigation),
      ),

    );

  }
}
