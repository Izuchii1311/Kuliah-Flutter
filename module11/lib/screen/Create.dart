import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:module11/model/ApiUrl.dart';
import 'package:module11/model/Mahasiswa.dart';
import 'package:module11/screen/AppForm.dart';
import 'dart:async';

class Create extends StatefulWidget {
  final Function? refreshMhsList;

  Create({this.refreshMhsList});

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // Required for form validations
  final formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController nimController = new TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController jurusanController = new TextEditingController();

  // Http post request to create new data
  Future _createMhs(body) async {
    http.Response response = await http.post(
      Uri.parse("${ApiUrl.basicURL}/create.php"),
      headers: {"Accept": "application/json; charset=UTF-8"},
      body: {
        "nim": nimController.text,
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
    await _createMhs(mahasiswaToJson(mhs)).then((value) => print("Save data success"));
    // Remove all existing routes until the Home.dart, the rebuild Home.
    Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          child: const Text("CONFIRM"),
          onPressed: () {
            if(formKey.currentState!.validate()) {
              _onConfirm(context);
            }
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
              nimController: nimController,
              namaController: namaController,
              jurusanController: jurusanController,
              formKey: formKey,
            ),
          ),
        ),
      ),
    );
  }
}
