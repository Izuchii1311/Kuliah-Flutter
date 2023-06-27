import 'package:flutter/material.dart';
import 'package:module9/main2.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyDataTable(title: 'Demo Data Tabel'),
    );
  }
}

class MyDataTable extends StatefulWidget {
  const MyDataTable({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyDataTable> createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: <Widget> [
        Center(
          child: Text('Students', 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          ),
        ),
        DataTable(
          columns: [
            DataColumn(label: Text('NIM')),
            DataColumn(label: Text('Nama')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows:[
            DataRow(cells: [
              DataCell(Text('2142430')),
              DataCell(Text('Luthfi Nur Ramadhan')),
              DataCell(Text('Teknik Informatika')),
            ]),
            DataRow(cells: [
              DataCell(Text('2142430')),
              DataCell(Text('Luthfi Nur Ramadhan')),
              DataCell(Text('Teknik Informatika')),
            ]),
            DataRow(cells: [
              DataCell(Text('2142430')),
              DataCell(Text('Luthfi Nur Ramadhan')),
              DataCell(Text('Teknik Informatika')),
            ]),
          ]
        ),

        ElevatedButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>MyApp2())
                );
              },
          child: const Text('Submit', style: TextStyle(color: Colors.white)),
          )

      ]),
    );
  }
}

