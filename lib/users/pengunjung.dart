import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';

class Pengunjung extends StatefulWidget {
  const Pengunjung({Key? key}) : super(key: key);

  @override
  _PengunjungState createState() => _PengunjungState();
}

class _PengunjungState extends State<Pengunjung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengunjung'),
      ),
      body: Center(
        child: Text(
          'Pengunjung Page',
        ),
      ),
    );
  }
}

class visit{
  
}
