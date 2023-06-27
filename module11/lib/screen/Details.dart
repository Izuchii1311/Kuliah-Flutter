import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:module11/model/ApiUrl.dart';
import 'package:module11/model/Mahasiswa.dart';
import 'package:module11/screen/Edit.dart';
// import 'dart:async';

class Details extends StatefulWidget {
  final Mahasiswa? mhs;

  Details({this.mhs});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void deleteMhs(context) async {
    http.Response response = await http.post(Uri.parse("${ApiUrl.basicURL}/delete.php"),
      headers: {"Accept": "application/json; charset=UTF-8"},
      body: {
        'nim': widget.mhs!.nim.toString(),
      },
    );
    if(response.statusCode == 200){
      print('Status 200');
    } else {
      print("error status ${response.statusCode}");
    }
    // Navigator.pop(context);
    Navigator.of(context)
      .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  void confirmDelete(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Are you sure you want to delete this?'),
          actions: <Widget>[
            ElevatedButton(
              child: const Icon(Icons.cancel),
              onPressed: () => Navigator.of(context).pop(),
            ),
            ElevatedButton(
              child: const Icon(Icons.check_circle),
              onPressed: () => deleteMhs(context),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => confirmDelete(context),
          ),
        ],
      ),
      body: Container(
        height: 270.0,
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Nama : ${widget.mhs!.nama}",
              style: const TextStyle(fontSize: 20),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Text(
              "Jurusan : ${widget.mhs!.jurusan}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => Edit(mhs: widget.mhs),
          ),
        ),
      ),
    );
  }
}