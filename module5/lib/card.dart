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
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.blueAccent,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/Nenechi.png', width: 50, height: 50),
                  title: Text('STMIK AMIK BANDUNG', style: TextStyle(fontSize: 30)
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                ElevatedButton(
                  child: Text('Website'),
                  onPressed: (){},
                )
              ],
            )
          ),
        ),
      )
    );
  }
}