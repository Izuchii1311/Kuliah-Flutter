import 'package:flutter/material.dart';
// import 'package:uts/pages/login.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),

            Text("Registrasi Akun Baru", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Poppins',fontSize: 40,fontWeight: FontWeight.bold,)),

            SizedBox(height: 30),

            Padding(  
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                    TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Nama Lengkap', hintText: 'Masukkan Nama Anda')
                  ),
                ],
              )
            ),  

            Padding(  
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  TextField(  
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Alamat Email', hintText: 'Masukkan Email')),
                ],
              )
            ),  

             Padding(  
              padding: EdgeInsets.all(10),  
              child: TextField(  
                obscureText: true,  
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password', hintText: 'Masukkan Password'),  
              ),  
            ),  

            Padding(  
              padding: EdgeInsets.all(10),  
              child: TextField(  
                obscureText: true,  
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Konfirmasi Password', hintText: 'Masukkan Konfirmasi Password'),  
              ),  
            ),  

            SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 3, 13, 122), fixedSize: Size(MediaQuery.of(context).size.width - 20, 50)),
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Daftar Akun"),
            ),  

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah Punya Akun ? '),
                TextButton(
                  onPressed: () {
                  Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Login', style: TextStyle(color: Colors.blue)),
                )
              ],
            ),
          ],  
        ),
      ),
    );
  }
}