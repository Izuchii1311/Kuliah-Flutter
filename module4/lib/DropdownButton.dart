import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      title: "Latihan Drop Down Button di Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        appBar: AppBar(
        title: Text("Latihan Floating Button di Flutter"),
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

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {

    return DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(
            color: Colors.black
          ),
          underline: Container(
            height: 2,
            color: Colors.blueAccent[100],
          ),
          onChanged: (String? newValue){
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One','Two','Three','Four'].map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        );

  }
}
