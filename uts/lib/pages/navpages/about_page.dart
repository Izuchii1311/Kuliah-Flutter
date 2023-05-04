import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: Container(
        child: Column(
          children: [
              
            Center( 
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Klinik Netra", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Poppins')),

                    SizedBox(height: 10),

                    Text("Sejarah Klinik Kami", textAlign: TextAlign.center, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Poppins', )),

                    SizedBox(height: 20),

                    Text("Netra Klinik Spesialis Mata berdiri sejak tahun 2007 dengan menyediakan pelayanan kesehatan mata bagi pasien yang membutuhkan pemeriksaan dan pengobatan (intensive care) serta hal-hal yang berkaitan dengan kesehatan mata. \n Melalui konsep one stop eye health services, Netra Klinik menjadi solusi perawatan kesehatan mata secara holistik. Kami menawarkan layanan kesehatan mata yang secara signifikan mempunyai competitive & comparative advantage sehingga mampu memberikan atmosfer pengalaman yang memuaskan bagi pasien dan keluarga.", textAlign: TextAlign.center, style: TextStyle( color: Colors.black38, fontWeight: FontWeight.normal, fontSize: 12, fontFamily: 'Poppins', )),

                    SizedBox(height: 20),

                    Text("Alamat Kami", textAlign: TextAlign.center, style: TextStyle( color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Poppins', )),

                    SizedBox(height: 30),

                    Image.asset("assets/KlinikNetraMaps.png", height: 350, width:1200),

                    SizedBox(height: 20),

                    Text("Netra Klinik Spesialis Mata Supratman - Bandung", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'Poppins')),

                    Text("Jalan Supratman No. 17 \n Bandung Jawa Barat \n 022 - 720 1720", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12, fontFamily: 'Poppins')),
                  ]
                )
              )
            ),
          ],
        ),
      )
      )

    );
  }
}