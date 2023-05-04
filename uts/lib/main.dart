import 'package:flutter/material.dart';
import 'package:uts/pages/login.dart';
import 'package:uts/pages/register.dart';
import 'package:uts/pages/errorPage.dart';
import 'package:uts/pages/navpages/main_page.dart';
  
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MyDashboard(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/errorPage': (context) => ErrorPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}

class MyDashboard extends StatefulWidget {
  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 65),

            Image.asset("assets/NetraLogo.png", height: 200, width:400),
            Text("Selamat Datang di Aplikasi \n Klinik Mata Netra", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            
            SizedBox(height: 15),

            Text("Konsep High Tech dan High Touch menjadikan \n Netra Klinik Spesialis Mata memiliki layanan \n yang komprehensif serta memberikan pelayanan personal \n demi kenyamanan pasien.", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 12)),

            SizedBox(height: 70,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 3, 13, 122), fixedSize: Size(MediaQuery.of(context).size.width - 60, 50)),
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Login"),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 255, 255), fixedSize: Size(MediaQuery.of(context).size.width - 60, 50)),
              onPressed: (){
                Navigator.pushNamed(context, '/register');
              },
              child: Text("Registrasi", style: TextStyle(color: Colors.black)),
            ),
          ]
        ),
      )
    );
  }
}
