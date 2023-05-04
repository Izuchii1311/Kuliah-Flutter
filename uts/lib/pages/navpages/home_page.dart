import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uts/pages/login.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container (width: 600, height: 20, child: Image.asset("assets/ImageKlinik.png")),
    Container (width: 600, height: 20, child: Image.asset("assets/ImageKlinik.png")),
    Container (width: 600, height: 20, child: Image.asset("assets/ImageKlinik.png")),   
    Container (width: 600, height: 20, child: Image.asset("assets/ImageKlinik.png")),   
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),color: Colors.black, onPressed: (){}),
          IconButton(icon: Icon(Icons.person),color: Colors.black, onPressed: (){}),
          IconButton(icon: Icon(Icons.logout),color: Colors.black, onPressed: (){Navigator.pushNamed(context, '/login');}),
        ],
        centerTitle: true,
        title: Text("Klinik Netra", style: TextStyle(color: Colors.black)),
      ),

      body: Container(
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: myData,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
                ),
              ),
            ),

            Text("Pelayanan Kami", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 14),textAlign: TextAlign.left),

            SizedBox(height: 10),

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
        ),
      )
    );
  }
}

