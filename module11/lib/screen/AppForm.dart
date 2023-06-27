import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController nimController;
  TextEditingController namaController;
  TextEditingController jurusanController;

  AppForm(
      {Key? key,
      required this.nimController,
      required this.namaController,
      required this.jurusanController,
      required this.formkey})
      : super(key: key);

  @override
  _AppFormState createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: widget.nimController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'NIM'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter NIM';
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.namaController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(labelText: 'Nama'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter nama';
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.jurusanController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(labelText: 'Jurusan'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter jurusan';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
