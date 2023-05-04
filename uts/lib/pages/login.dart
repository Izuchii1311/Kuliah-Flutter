import 'package:flutter/material.dart';
import 'package:uts/pages/errorPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        margin: EdgeInsets.all(15),
        child: Center(
          child: Form(
            key: _formState,
            child: Column(
              children: [
                SizedBox(height: 50),

                Text("Login Akun", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Poppins', fontSize: 40, fontWeight: FontWeight.bold)),

                SizedBox(height: 30),

                TextFormField(
                  controller: textController,
                  validator: (value){
                    if(value == ''){
                      return "Email tidak boleh kosong";
                    }
                  },
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Alamat Email', hintText: 'Masukkan Email Anda...'),
                ),

                SizedBox(height: 40),

                TextFormField(
                  controller: passController,
                  validator: (value){
                    if(value == ''){
                      return "Password tidak boleh kosong";
                    }
                  },
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password', hintText: 'Masukkan Password Anda...'),
                ),

                SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 3, 13, 122), fixedSize: Size(MediaQuery.of(context).size.width - 20, 50)),
                    onPressed: () {
                      if(_formState.currentState!.validate()){
                        Navigator.pushNamed(context, '/home');
                      } else {
                        print ("Validation Failed");
                      }
                    },
                    child: Text("Login")
                  )
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Belum Punya Akun ? '),
                    TextButton(
                      onPressed: () {
                      Navigator.pushNamed(context, '/register');
                      },
                      child: Text('Registrasi', style: TextStyle(color: Colors.blue)),
                    )
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                      Navigator.pushNamed(context, '/errorPage');
                      },
                      child: Text('Lupa Kata Sandi?', style: TextStyle(color: Colors.blue)),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
