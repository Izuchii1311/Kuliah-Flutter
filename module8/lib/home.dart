import 'package:flutter/material.dart';
import 'package:module8/detail.dart';  

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Handling Text Field',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _home = GlobalKey<FormState>();
  final nim = TextEditingController();
  final nama = TextEditingController();
  final jurusan = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Mahasiswa'),
      ),
      body: Form(
        key: _home,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: nim,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Ketik NIM anda',
                  labelText: 'NIM',
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return 'NIM tidak boleh kosong';
                  }
                  return null;
                }
              ),

              SizedBox(height: 15,),

              TextFormField(
                controller: nama,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Ketik Nama anda',
                  labelText: 'Nama',
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                }
              ),
              
              SizedBox(height: 15,),

              TextFormField(
                controller: jurusan,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Ketik Jurusan anda',
                  labelText: 'Jurusan',
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return 'Jurusan tidak boleh kosong';
                  }
                  return null;
                }
              ),

              SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  if(_home.currentState!.validate()){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Detail(nim: nim.text, nama: nama.text, jurusan: jurusan.text)
                      )
                    );
                  } 
                },
                child: const Text('Submit', style: TextStyle(color: Colors.white)),
              )
            ]
          )
        ),
      ),
    );
  }
}