import 'package:flutter/material.dart';
import 'package:module6/routes.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigasi Route Flutter")),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                // Function
                Navigator.pushNamed(context, '/about');
              },
              child: Text("Next Page"),
            ),
            
            SizedBox(
              height: 20,
              child: Image.asset("assets/Columbina.png", fit: BoxFit.cover,
                height: 50, // set your height
                width: 70,),
            ),

            ElevatedButton(
              onPressed: (){
                // Function
                Navigator.pushNamed(context, '/asap');
              },
              child: Text("Halaman Error"),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman AboutPage")),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Kembali"),
        ),
      ),
    );
  }
}