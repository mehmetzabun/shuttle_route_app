import 'package:flutter/material.dart';
import 'package:yazlab2dnm/KayitEkrani.dart';
import 'package:yazlab2dnm/KullaniciEkrani.dart';
import 'package:yazlab2dnm/AdminEkrani.dart';

double ekranyukseklik = 0.0;
double ekrangenislik = 0.0;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    ekranyukseklik = ekran.size.height;
    ekrangenislik = ekran.size.width;
    TextEditingController uname = TextEditingController();
    TextEditingController upaswd = TextEditingController();

    return Scaffold(
      //backgroundColor: Colors.green,
      /*AppBar: AppBar(
        title: Text(widget.title),
      ),*/
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  /* //Spacer(), //Boşluk
          // Padding() //Container etrafında boşluk
          // Expended() //Container boş alanda yayılır

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: ekranyukseklik/5,
                width: ekrangenislik/5,
                child: Image.asset("resimler/kou.jpg")
            ),
          ),
          Text("KOÜ",style: TextStyle(fontSize: ekranyukseklik/20),),
          Container(width: ekrangenislik,height: ekranyukseklik/8,color: Colors.lightGreen,),*/
                  //Container(width: 50,height: 50,color: Colors.lightGreen,),
                  //Container(width: 60,height: 60,color: Colors.lightGreenAccent,),

                  Padding(
                    padding: EdgeInsets.only(top:ekranyukseklik/20),
                    child: SizedBox(
                        width: ekrangenislik/4,
                        height: ekranyukseklik/6,
                        child: Image.asset("resimler/kou.jpg")),

                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom:ekranyukseklik/60),
                    child: Text("Kocaeli Üniversitesi Servis Takip Sistemi"),
                  ),

                  Padding(                         // KULLANICI ADI
                    padding: EdgeInsets.all(ekranyukseklik/50),
                    child: TextField(
                      controller: uname,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Kullanıcı veya Admin Adı",
                        filled: true,
                        fillColor: Colors.white,
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  Padding(                                // ŞİFRE
                    padding: EdgeInsets.all(ekranyukseklik/50),
                    child: TextField(
                      controller: upaswd,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        hintText: "Şifre",
                        filled: true,
                        fillColor: Colors.white,
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: ekranyukseklik/50),

                  Padding(
                    padding: EdgeInsets.all(ekranyukseklik/50),
                    child: Container(
                      height: ekranyukseklik/20,
                      width: ekrangenislik/2,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: TextButton(
                        child: Text(
                          'Giriş Yap',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        onPressed: () {
                          String _name = uname.text.toString().trim();
                          String _paswd = upaswd.text.toString();

                          if (_name.isEmpty) {
                            print('Please Enter User Name');

                          } else if (_paswd.isEmpty) {
                            print('Please Enter Password');

                          } else {
                            if (_name == 'admin' && _paswd == 'admin') {
                              Navigator.of(context).push(MaterialPageRoute(
                                 builder: (BuildContext context) => Admin()));
                            } else if(_name == 'user' && _paswd == 'user'){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => Kullanici()));
                            }else{
                              print("login failed");
                            }
                          }
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: ekranyukseklik/20,
                    width: ekrangenislik/2,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: TextButton(
                      child: Text(
                        'Kayıt ol',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => KayitEkrani()));

                      }
                    ),
                  ),

                ],

              ),

            )));
  }
}

