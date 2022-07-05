import 'package:flutter/material.dart';
import 'package:wisatabantul/model/getWisata.dart';

class DetailWisata extends StatefulWidget {
  getWisata? wisata;

  DetailWisata({Key? key, this.wisata}) : super(key: key);

  @override
  _DetailWisataState createState() => _DetailWisataState();
}

class _DetailWisataState extends State<DetailWisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.wisata!.nama_wisata}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("${widget.wisata!.gambar_wisata}"),
            Text(
              "Info: ${widget.wisata!.info_wisata}",
              style: const TextStyle(fontSize: 18.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Alamat : ${widget.wisata!.alamat_wisata}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Fasilitas : ${widget.wisata!.fasilitas}",
              style: const TextStyle(fontSize: 18.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "HTM : ${widget.wisata!.htm_wisata}",
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
