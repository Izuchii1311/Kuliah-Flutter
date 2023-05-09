import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({required this.nim, required this.nama, required this.jurusan});

  String nim;
  String nama;
  String jurusan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan Nama
            Text(nim, style: TextStyle(fontSize: 14, color: Colors.black, wordSpacing: 3),),
            // Menampilkan Nama
            Text(nama, style: TextStyle(fontSize: 14, color: Colors.black, wordSpacing: 3),),
            // Menampilkan Jurusan
            Text(jurusan, style: TextStyle(fontSize: 14, color: Colors.black, wordSpacing: 3),),
          ]
        )
      ),
    );
  }
}