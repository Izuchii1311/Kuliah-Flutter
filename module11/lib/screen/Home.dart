import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:module11/model/ApiUrl.dart';
import 'package:module11/model/Mahasiswa.dart';
import 'package:module11/screen/Create.dart';
import 'package:module11/screen/Details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  late Future<List<Mahasiswa>?> listMhs;
  final mhsListKey = GlobalKey<HomeState>();

  @override
  void initState() {
    super.initState();
    listMhs = getMhsList();
  }

  Future<List<Mahasiswa>?> getMhsList() async {
    final response = await http.get(Uri.parse("${ApiUrl.basicURL}/list_mhs.php"),
      headers: {"Accept": "application/json; charset=UTF-8"});
    if(response.statusCode == 200) {
      List<Mahasiswa> mahasiswaFromJson(String str) => List<Mahasiswa>.from(json.decode(str).map((items) => Mahasiswa.fromJson(items)));
      return mahasiswaFromJson(response.body);
    } else {
      print("Error Status: ${response.statusCode}");
    }

    Exception('Failed unload data!');
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mhsListKey,
      appBar: AppBar(
        title: const Text('Daftar Mahasiswa'),
      ),
      body: Center(
        child: FutureBuilder<List<Mahasiswa>?> (
          future: listMhs,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // By Default, show a loading spinner.
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            // Render lists
            return ListView.builder(
              itemCount: snapshot.data == null ? 0 : snapshot.data.lenght,
              itemBuilder: (BuildContext context, int index) {
                final data = snapshot.data[index];
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    trailing: const Icon(Icons.view_list),
                    title: Text(data.nim.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details(mhs: data)),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return Create();
          }));
        },
      )
    );
  }
}