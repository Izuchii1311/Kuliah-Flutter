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
      body: Center(
        child: Stack(
          alignment: Alignment(0.5, 0.6 ),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/Nenechi.png'),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              child: Text('Beautiful Flowers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
              ),
            )
          ],
        ),
      )
    );
  }
}