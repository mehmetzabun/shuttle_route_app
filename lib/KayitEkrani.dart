import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KayitEkrani extends StatefulWidget {
  const KayitEkrani({Key? key}) : super(key: key);

  @override
  _KayitEkraniState createState() => _KayitEkraniState();
}

double ekranyukseklik = 0.0;
double ekrangenislik = 0.0;

class _KayitEkraniState extends State<KayitEkrani> {
  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    ekranyukseklik = ekran.size.height;
    ekrangenislik = ekran.size.width;
    TextEditingController username = TextEditingController();
    TextEditingController userpaswd = TextEditingController();
    TextEditingController userpaswd2 = TextEditingController();

    return Scaffold(
      //backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Kullanıcı Kayıt"),
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[

                  Padding(
                    padding: EdgeInsets.only(top:ekranyukseklik/20),
                    child: SizedBox(
                        width: ekrangenislik/4,
                        height: ekranyukseklik/6,
                        child: Image.asset("resimler/kou.jpg")),

                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom:ekranyukseklik/60),
                    child: Text("Kayıt Bilgileri"),

                  ),

                  Padding(                         // KULLANICI ADI
                    padding: EdgeInsets.all(ekranyukseklik/50),
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Kullanıcı Adı",
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
                      controller: userpaswd,
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

                  Padding(                                // ŞİFRE
                    padding: EdgeInsets.all(ekranyukseklik/50),
                    child: TextField(
                      controller: userpaswd2,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        hintText: "Şifre Tekrar",
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
                          'Kayıt Tamamla',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        onPressed: () {
                          String _name = username.text.toString().trim();
                          String _paswd = userpaswd.text.toString();
                          String _paswd2 = userpaswd2.text.toString();
                          if (_name.isEmpty) {
                            print('Kullanıcı adı giriniz');

                          } else if (_paswd.isEmpty) {
                            print('Şifre giriniz');

                          } else if(_paswd != _paswd2){
                            print('Şifreler eşleşmiyor');

                          } else {
                            print('Kullanıcı oluşturuldu');

                          }
                        },
                      ),
                    ),
                  ),

                ],

              ),

            )));
  }
}
