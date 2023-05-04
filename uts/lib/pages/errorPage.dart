import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),

            Text('Halaman Sedang Dalam Proses Pembuatan', style: TextStyle(fontFamily: 'Poppins', fontStyle: FontStyle.italic, fontSize: 18, color: Colors.grey)),

            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/login');
            }, 
            child: Text("Kembali")
            ),
          ]
        )
      ),
    );
  }
}