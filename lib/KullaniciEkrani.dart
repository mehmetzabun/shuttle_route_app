
import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:yazlab2dnm/DrawerKullanici.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yazlab2dnm/main.dart';
import 'Login.dart';

class Kullanici extends StatefulWidget {
  const Kullanici({Key? key}) : super(key: key);

  @override
  _KullaniciState createState() => _KullaniciState();
}

Completer<GoogleMapController> haritaKontrol = Completer();

var basangicKonum = CameraPosition(target: LatLng(38.74124,26.188442),zoom: 6,);

List <Marker> isaretler = <Marker>[];


class _KullaniciState extends State<Kullanici> {
  @override
  Widget build(BuildContext context) {

    late String massage;


    if(ToplamKapasite<ToplamYolcu){
      kalanYolcu = ToplamYolcu-ToplamKapasite;
      massage="  Kapasite yetersiz $kalanYolcu yolcu alınamadı.";
    }else{
      massage="  Kapasite yeterli tüm yolcular alındı.";

    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Kullanıcı Sayfası"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[


            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("              Durak ve Yolcu Bilgileri" ,style: TextStyle(fontSize: ekranyukseklik/30),)

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Basiskele.ad+": "+Basiskele.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),)
              ),
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Darica.ad +":  "+Darica.yolcuSayisi.toString()+" yolcu",style: TextStyle(fontSize: ekranyukseklik/30),)

              ),
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Derince.ad+": "+Derince.yolcuSayisi.toString()+" yolcu",style: TextStyle(fontSize: ekranyukseklik/30),)

              ),

            ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Dilovasi.ad+": "+Dilovasi.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),),)


            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Cayirova.ad+": "+Cayirova.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),)

              ),
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Gebze.ad+": "+Gebze.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),)

              ),
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Golcuk.ad+": "+Golcuk.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),)

              ),
            ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Karamursel.ad+": "+Karamursel.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Korfez.ad+": "+Korfez.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Kandira.ad+": "+Kandira.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  "+Kartepe.ad+": "+Kartepe.yolcuSayisi.toString()+" yolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  Toplam yolcu sayısı: $ToplamYolcu" ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("  Toplam kapasite: $ToplamKapasite" ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: ekranyukseklik/20,
                  width: ekrangenislik/2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(massage ,style: TextStyle(fontSize: ekranyukseklik/30),),)

            ),
          ],
        ),
      ),
      drawer: DrawerKullanici(),
    );
  }
}

class KullaniciHarita extends StatefulWidget {
  const KullaniciHarita({Key? key}) : super(key: key);

  @override
  _KullaniciHaritaState createState() => _KullaniciHaritaState();
}

class _KullaniciHaritaState extends State<KullaniciHarita> {
  @override
  Widget build(BuildContext context) {


    var ekran = MediaQuery.of(context);
    ekranyukseklik = ekran.size.height;
    ekrangenislik = ekran.size.width;

    Marker _Karamurselmarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Karamursel.latit,Karamursel.long),
      infoWindow: InfoWindow(title: Karamursel.ad,snippet: Karamursel.yolcuSayisi.toString()),

    );
    Marker _Izmitmarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Izmit.latit,Izmit.long),
      infoWindow: InfoWindow(title: Izmit.ad,snippet: Izmit.yolcuSayisi.toString()),

    );
    Marker _Basiskelemarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Basiskele.latit,Basiskele.long),
      infoWindow: InfoWindow(title: Basiskele.ad,snippet: Basiskele.yolcuSayisi.toString()),

    );
    Marker _Korfezmarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Korfez.latit,Korfez.long),
      infoWindow: InfoWindow(title: Korfez.ad,snippet: Korfez.yolcuSayisi.toString()),

    );
    Marker _Cayirovamarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Cayirova.latit,Cayirova.long),
      infoWindow: InfoWindow(title: Cayirova.ad,snippet: Cayirova.yolcuSayisi.toString()),

    );
    Marker _Dilovasimarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Dilovasi.latit,Dilovasi.long),
      infoWindow: InfoWindow(title: Dilovasi.ad,snippet: Dilovasi.yolcuSayisi.toString()),

    );
    Marker _Derincemarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Derince.latit,Derince.long),
      infoWindow: InfoWindow(title: Derince.ad,snippet: Derince.yolcuSayisi.toString()),

    );
    Marker _Daricamarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Darica.latit,Darica.long),
      infoWindow: InfoWindow(title: Darica.ad,snippet: Darica.yolcuSayisi.toString()),

    );Marker _Golcukmarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Golcuk.latit,Golcuk.long),
      infoWindow: InfoWindow(title: Golcuk.ad,snippet: Golcuk.yolcuSayisi.toString()),

    );Marker _Gebzemarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Gebze.latit,Gebze.long),
      infoWindow: InfoWindow(title: Gebze.ad,snippet: Gebze.yolcuSayisi.toString()),

    );Marker _Kandiramarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Kandira.latit,Kandira.long),
      infoWindow: InfoWindow(title: Kandira.ad,snippet: Kandira.yolcuSayisi.toString()),

    );Marker _Kartepemarker = Marker(

      markerId: MarkerId("Id"),
      position: LatLng(Kartepe.latit,Kartepe.long),
      infoWindow: InfoWindow(title: Kartepe.ad,snippet: Kartepe.yolcuSayisi.toString()),

    );





    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Harita"),
      ),
      body: Center(

          child: Column(

            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: ekrangenislik-10,
                  height: ekranyukseklik/1.2,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: basangicKonum,
                    markers:{
                      _Karamurselmarker,
                      _Basiskelemarker,
                      _Cayirovamarker,
                      _Korfezmarker,
                      _Izmitmarker,
                      _Gebzemarker,
                      _Kandiramarker,
                      _Kartepemarker,
                      _Dilovasimarker,
                      _Golcukmarker,
                      _Derincemarker,
                      _Daricamarker,
                    },
                    onMapCreated: (GoogleMapController controller) {
                      haritaKontrol.complete(controller);
                    },),
                ),
              ),



            ],
          )




      ),
      drawer: DrawerKullanici(),

    );
  }
}

