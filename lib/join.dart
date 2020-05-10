import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("How To Join Us"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(                            
                            image: DecorationImage(image: AssetImage('images/covere.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Column(                
                children: <Widget>[                  
                  Text('  MedicalPortable adalah salah satu aplikasi yang dapat menjadi jawaban atas keresahan masyarakat. Dalam aplikasi ini kita dapat melakukan kontrol diri secara fleksibel yang dapat dilakukan di mana saja. Karena aplikasi ini disediakan dalam Smart Phone masing-masing. Kami sebagai developer memberikan kesempatan untuk bergabung membangun aplikasi ini menjadi lebih baik kedepannya. Caranya yaitu: 1. Buka Our Member,2. Klik tanda tambah dan isi data anda',
                  textAlign: TextAlign.justify, 
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                  SizedBox(
                    height: 10,
                  ),                                
                ]
              ),
            )
          ]
        ),
      );
  } 
}