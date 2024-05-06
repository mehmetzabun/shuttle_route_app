
import 'package:flutter/material.dart';
import 'package:yazlab2dnm/Login.dart';
import 'package:yazlab2dnm/AdminEkrani.dart';
import 'package:yazlab2dnm/KullaniciEkrani.dart';


 class Durak{

  late String ad;
  late int yolcuSayisi;
  late double latit;
  late double long;

  Durak(this.ad,this.yolcuSayisi, this.latit, this.long);
}

class Servis{

  late int kapasite;
  Servis(this.kapasite);

}

Durak Karamursel = new Durak("Karamursel",20,40.6958,29.6283);
Durak Izmit = new Durak("İzmit",10,40.766666, 29.916668);
Durak Basiskele = new Durak("Başiskele",9,40.715298, 29.927692);
Durak Korfez = new Durak("Körfez",5,40.776382, 29.737718);
Durak Cayirova = new Durak("Çayırova",12,40.8172, 29.3734);
Durak Darica = new Durak("Darıca",2,40.769588, 29.370031);
Durak Derince = new Durak("Derince",3,40.7562, 29.8309);
Durak Kartepe= new Durak("Kartepe",14,40.753448, 30.028965);
Durak Gebze= new Durak("Gebze",10,40.807751, 29.437340);
Durak Golcuk = new Durak("Gölcük",7,40.7177, 29.8193);
Durak Dilovasi = new Durak("Dilovası",20,40.7890, 29.5421);
Durak Kandira = new Durak("Kandıra",15,41.07101000000006, 30.14862000000005);

int ToplamYolcu = Kartepe.yolcuSayisi+Karamursel.yolcuSayisi+Izmit.yolcuSayisi+
Basiskele.yolcuSayisi+Korfez.yolcuSayisi+Cayirova.yolcuSayisi+Darica.yolcuSayisi+
Derince.yolcuSayisi+Gebze.yolcuSayisi+Golcuk.yolcuSayisi+Dilovasi.yolcuSayisi+
Kandira.yolcuSayisi;

Servis servis1 = new Servis(25);
Servis servis2 = new Servis(20);
Servis servis3 = new Servis(20);

int ToplamKapasite = servis1.kapasite+servis2.kapasite+servis3.kapasite;
int kalanYolcu=0;


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var ekran = MediaQuery.of(context);
    double ekranyukseklik = ekran.size.height;
    double ekrangenislik = ekran.size.width;

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

          Padding(
            padding: EdgeInsets.all(ekranyukseklik/30),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Kullanıcı veya Admin Adı ",
                filled: true,
                fillColor: Colors.white,
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranyukseklik/30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.vpn_key),
                hintText: "Şifre",
                filled: true,
                fillColor: Colors.white,
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.all(ekranyukseklik/30),
            child: SizedBox(
              width: ekrangenislik/3,
              height: ekranyukseklik/17,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                ),

                child: Text("GİRİŞ YAP",style: TextStyle(fontSize: ekranyukseklik/40,color: Colors.white)),
                onPressed: (){
                  print("giriş başarılı");
                },

              ),
            ),
          ),

        ],

      ),

    )));
  }
}
