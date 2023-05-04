import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dokter Kami dan Dokumentasi", style: TextStyle(fontFamily: 'Poppins', color: Colors.black),textAlign: TextAlign.center),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false
      ),

      body: Container(
        child: Column(
          children: [
            // Text("Doktor Kami", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.orange),textAlign: TextAlign.center),

            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(25),
                crossAxisCount: 2,
                children: [

                  Card(margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        // tujuan
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/doctor/Pandji.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Sutarya.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Susanti.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Dewi.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Arief.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Susi.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Maula.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/doctor/Erwin.png", width: 200, height: 200,),
                            // Text("...", style: TextStyle(fontSize: 17),),
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
                            Image.asset("assets/dokumentasi/Dokumentasi1.png", width: 300, height:100),
                            Text("Dokumentasi Pertama", style: TextStyle(fontSize: 14),),
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
                            Image.asset("assets/dokumentasi/Dokumentasi2.png", width: 300, height: 100),
                            Text("Dokumentasi Kedua", style: TextStyle(fontSize: 14)),
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
                            Image.asset("assets/dokumentasi/Dokumentasi3.png", width: 300, height: 100),
                            Text("Dokumentasi ketiga", style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
            height:30,
            // child: Text("Dokumentasi Kami", style: TextStyle(fontSize: 24, color: Colors.orange),textAlign: TextAlign.center)
            ),
          ],
        )
      ),
    );
  }
}

