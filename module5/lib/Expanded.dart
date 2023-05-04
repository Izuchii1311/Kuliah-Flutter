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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('assets/Botan.png')),
          Expanded(child: Image.asset('assets/Izuchii.png')),
          Expanded(child: Image.asset('assets/Nenechi.png')),
          Expanded(child: Image.asset('assets/Polka.png')),
          Expanded(child: Image.asset('assets/Ruien HD.png')),
        ],
      )
    );
  }
}