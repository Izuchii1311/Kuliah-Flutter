import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,

      title: "Latihan Icon Button di Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(),
        
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

    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Icon Button di Flutter"),

          actions: [
          PopupMenuButton(
            onSelected: (selectedValue){
              print(selectedValue);
            },
            itemBuilder: (BuildContext bc) =>[
              PopupMenuItem(child: Text("Pilihan 1"), value: '1'),
              PopupMenuItem(child: Text("Pilihan 2"), value: '2'),
              PopupMenuItem(child: Text("Pilihan 3"), value: '3'),
              PopupMenuItem(child: Text("Pilihan 4"), value: '4')
            ]
          )
        ]
        ),
    );
  }
}
