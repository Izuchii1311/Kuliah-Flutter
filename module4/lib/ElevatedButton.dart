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
        title: Text("Latihan Elevated Button di Flutter"),
        backgroundColor: Colors.green[100],
      ),
      backgroundColor: Colors.amberAccent[100],

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              // Merubah Style dari elevated button
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
                primary: Colors.amber
              ),
              child: Text("Dapat di Tekan"),
              onPressed: (){
                setState(() {
                  text = "Elevated Button Ditekan";
                }); 
              },
            ),
            Text(
              text, textScaleFactor: 2,
            )
          ],

        ),
      ),

    );

  }
}
