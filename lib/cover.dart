import 'package:flutter/material.dart';
import 'app.dart';
import 'join.dart';
void main(){
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
  ));
}

class Home extends StatefulWidget{
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: new AppBar(title: new Text("MedicalPortable"), backgroundColor: Colors.blue[700],),
      
      body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset("images/doctor.png", fit: BoxFit.contain,),
                  ),
                  
                  Text("MedicalPortable", style: TextStyle(color: Colors.grey[700], fontSize: 34, fontWeight: FontWeight.w700),),
                  
                  SizedBox(
                    height: 6,
                  ),
                  
                Container(
                  child: FlatButton.icon(
                      onPressed: (){                  
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => App()),
                          );
                      },
                      icon: Icon(Icons.people, color: Colors.white,),
                      label: Text("OUR MEMBER"),
                    textColor: Colors.white,
                    color: Colors.blue,

                  ),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, right: 16),
                ),
                Container(
                  child: FlatButton.icon(
                      onPressed: (){                  
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()),
                          );
                      },
                      icon: Icon(Icons.party_mode, color: Colors.white,),
                      label: Text("JOIN US"),
                    textColor: Colors.white,
                    color: Colors.blue,

                  ),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, right: 16),
                )
                 
    
            ],
          )
        )
      ),
    );
  }
}