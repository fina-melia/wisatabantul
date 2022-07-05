import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wisatabantul/constant.dart';
import 'package:wisatabantul/users/home.dart' as users;

class Launcher extends StatefulWidget {
  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3); // atur durasi lama munculnya
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new users.Home(); // navigator untuk ngarahin ke file home.dart
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //splash screen
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [palette.bg1, palette.bg2])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.asset(
              "assets/logo1.png", // memanggil gambar yang terdapat di assets
              height: 200.0, //mengatur tinggi gambar
              width: 450.0, // mengatur lebar gambar
            ),
          )
        ],
      ),
    ));
  }
}
