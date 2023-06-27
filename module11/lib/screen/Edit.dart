import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:module11/model/ApiUrl.dart';
import 'package:module11/model/Mahasiswa.dart';
import 'package:module11/screen/AppForm.dart';

class Edit extends StatefulWidget {
  final Mahasiswa? mhs;

  Edit({this.mhs});

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  // Required for form validations
  final formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController nimController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController jurusanController = TextEditingController();

  // Http post request to create new data
  Future editMhs(body) async {
    http.Response response = await http.post(
      Uri.parse("${ApiUrl.basicURL}/update.php"),
      headers: {"Accept": "application/json; charset=UTF-8"},
      body: {
        "nim": widget.mhs!.nim.toString(),
        "nama": namaController.text,
        "jurusan": jurusanController.text,
      },
    );
    if (response.statusCode == 200) {
      print('Status 200');
      return true;
    } else {
      print("error status ${response.statusCode}");
      return null;
    }
  }

  void _onConfirm(context) async {
    Mahasiswa mhs = Mahasiswa();
    String mahasiswaToJson(Mahasiswa data) => json.encode(data.toJson());
    await editMhs(mahasiswaToJson(mhs)).then((value) => print("Edit data success"));
    // Remove all existing routes until the Home.dart, the rebuild Home.
    Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }
  @override
  void initState() {
    nimController = TextEditingController(text: widget.mhs!.nim.toString());
    namaController = TextEditingController(text: widget.mhs!.nama);
    jurusanController = TextEditingController(text: widget.mhs!.jurusan.toString());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          child: const Text("CONFIRM"),
          onPressed: () {
            _onConfirm(context);
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Padding( 
            padding: const EdgeInsets.all(12),
            child: AppForm(
              formKey: formKey,
              nimController: nimController,
              namaController: namaController,
              jurusanController: jurusanController,
            ),
          ),
        ),
      ),
    );
  }
}
