import 'package:flutter/material.dart';
import 'package:module9/mahasiswa.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Table Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  final nim_controller = TextEditingController();
  final nama_controller = TextEditingController();
  final jurusan_controller = TextEditingController();

  List<Mahasiswa> daftarMhs = <Mahasiswa> [
    Mahasiswa(010101, "Izuchii", "Teknik Informatika"),
    Mahasiswa(010101, "Luthfi", "Teknik Informatika"),
    Mahasiswa(010101, "Hutao", "Teknik Informatika"),
    Mahasiswa(010101, "Herta", "Teknik Informatika"),
    Mahasiswa(010101, "Yae Miko", "Teknik Informatika"),
    Mahasiswa(010101, "Ganyu", "Teknik Informatika"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Mahasiswa"),
      ),
      body: Form(
        key: _home,
        child: Container (
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: nim_controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Ketik NIM Anda",
                  labelText: "NIM"
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'NIM tidak boleh kosong';
                  }
                  return null;
                },
              ),

            SizedBox(height:15),

              TextFormField(
                controller: nama_controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Ketik Nama Anda",
                  labelText: "Nama"
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),

            SizedBox(height:15),

              TextFormField(
                controller: jurusan_controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Ketik Jurusan Anda",
                  labelText: "Jurusan"
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'Jurusan tidak boleh kosong';
                  }
                  return null;
                },
              ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(_home.currentState!.validate()){
                    _home.currentState?.save();

                    String nim = nim_controller.text;
                    String nama = nama_controller.text;
                    String jurusan = jurusan_controller.text;

                    Mahasiswa mhsAdd = Mahasiswa(int.parse(nim), nama, jurusan);
                    daftarMhs.add(mhsAdd);
                    setState((){
                      nim = nim.toString();
                    });
                    nim = "";
                    nama = "";
                    jurusan = "";

                  }
                },
                child: Text("Tambah Data", style: TextStyle(color:Colors.white)
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('hapus')),
                  DataColumn(label: Text('NIM')),
                  DataColumn(label: Text('Nama')),
                  DataColumn(label: Text('Jurusan')),
                ],

                rows: daftarMhs.map((e) => DataRow(
                  cells: [
                    DataCell(IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: (){
                        for (int i = 0; i<1; i++){
                          if(daftarMhs.elementAt(i).nim==e.nim){
                            daftarMhs.removeAt(i);
                          }
                        }
                        setState((){
                          daftarMhs=daftarMhs;
                        });
                      },
                    )),
                    DataCell(Text(e.nim.toString())),
                    DataCell(Text(e.nama.toString())),
                    DataCell(Text(e.jurusan.toString())),
                  ])).toList(),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
