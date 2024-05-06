import 'package:flutter/material.dart';
import 'package:yazlab2dnm/AdminEkrani.dart';
import 'package:yazlab2dnm/KullaniciEkrani.dart';
import 'package:yazlab2dnm/Login.dart';


class DrawerKullanici extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.account_circle, color: Colors.white,size: 40,),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "KULLANICI",      // ADMIN - KULLNICI
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Ana Sayfa"),
            leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Kullanici()));
            },
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            title: Text("Harita"),
            leading: IconButton(
              icon: Icon(Icons.location_on_sharp),
              onPressed: () {
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => KullaniciHarita()));
            },
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            title: Text("Çıkış"),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Login()));
            },
          )
        ],
      ) ,
    );
  }
}