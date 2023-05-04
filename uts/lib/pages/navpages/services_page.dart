import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30),

            Text("Layanan Klinik Mata Netra", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.orange),textAlign: TextAlign.center),
            
            SizedBox(height: 10),

            Text("'High Tech – High Touch' ,Komitmen kami untuk memberikan pelayanan yang terbaik bagi Anda", style: TextStyle(fontSize: 15),textAlign: TextAlign.center),

            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(25),
                crossAxisCount: 2,
                children: [

                  Card(
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        // tujuan
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/icon/manHealthWorker.png", width: 100, height: 100,),
                            Text("Catarac Center", style: TextStyle(fontSize: 14, color: Colors.orange)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  Card(
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        // tujuan
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/icon/womanHealthWorker.png", width: 100, height: 100,),
                            Text("Netra Diabetic Eye Center", style: TextStyle(fontSize: 14, color: Colors.orange),textAlign: TextAlign.center,),  
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        // tujuan
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/icon/medica_health.png", width: 100, height: 100,),
                            Text("Retina Center", style: TextStyle(fontSize: 14, color: Colors.orange)),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        // tujuan
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/icon/hospital.png", width: 100, height: 100,),
                            Text("Pelayanan BPJS", style: TextStyle(fontSize: 14, color: Colors.orange)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}