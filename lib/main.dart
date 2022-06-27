import 'package:flutter/material.dart';
import 'package:wisatabantul/launcher.dart';
import 'package:wisatabantul/ui/data-wisata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bantul',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Launcher(),
    );
  }
}
