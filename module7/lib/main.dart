import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gestures Flutter",
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, title}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text(
            "Tekan Sayah~~",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text('Pesan'),
          content: new Text("Hai... Wassalamualaikum"),
          actions: <Widget>[
            new TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text('Tutup'),
            )
          ],
        );
      });
}