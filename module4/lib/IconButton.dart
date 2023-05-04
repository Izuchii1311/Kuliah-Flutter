import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      title: "Latihan Icon Button di Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        appBar: AppBar(
        title: Text("Latihan Icon Button di Flutter"),
          backgroundColor: Colors.green[100],
          ),
        backgroundColor: Colors.amberAccent[100],

      body: Center(
        child: MyHomePage(),
        ),
      )
    );
  }
}

double _volume = 0.0;

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: (){
            setState(() {
              _volume += 10;
            });
          },
        ),
        Text('Volume : $_volume')
      ],
    );

  }
}
