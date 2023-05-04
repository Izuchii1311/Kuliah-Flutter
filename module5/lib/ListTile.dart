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
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('phone'),
          ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Email')
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Alarm')
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Email')
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Email')
          ),
        ],
      )
    );
  }
}