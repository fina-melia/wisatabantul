import 'package:flutter/material.dart';

class Wisata extends StatefulWidget {
  const Wisata({Key? key}) : super(key: key);

  @override
  _WisataState createState() => _WisataState();
}

class _WisataState extends State<Wisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata'),
      ),
      body: Center(
        child: Text(
          'Wisata Page',
        ),
      ),
    );
  }
}
