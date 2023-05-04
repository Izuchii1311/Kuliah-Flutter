import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Demo"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/Botan.png',height: 80, width: 80),
          Image.asset('assets/Izuchii.png',height: 80, width: 80),
          Image.asset('assets/Nenechi.png',height: 80, width: 80),
          Image.asset('assets/Polka.png',height: 80, width: 80),
          Image.asset('assets/Ruien HD.png',height: 80, width: 80),
        ],
      )
    );
  }
}