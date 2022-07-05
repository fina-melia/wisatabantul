import 'package:wisatabantul/model/getWisata.dart';
import 'package:wisatabantul/bloc/getWisataBloc.dart';
import 'package:flutter/material.dart';
import 'package:wisatabantul/ui/detail-wisata.dart';

class dataWisata extends StatefulWidget {
  dataWisata({Key? key}) : super(key: key);

  @override
  State<dataWisata> createState() => _dataWisataState();
}

class _dataWisataState extends State<dataWisata> {
  getWisata? wisata;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.green, title: Text("Daftar Wisata")),
        body: FutureBuilder<List>(
          future: getWisataBloc.presensi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ListWisata(list: snapshot.data)
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}

class ListWisata extends StatelessWidget {
  final List? list;

  const ListWisata({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list!.length,
        itemBuilder: (context, i) {
          return ItemWisata(wisata: list![i]);
        });
  }
}

class ItemWisata extends StatelessWidget {
  final getWisata wisata;
  const ItemWisata({Key? key, required this.wisata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //mengarahkah jika kita mengklik salah satu tempat wisata maka
        Navigator.push(
            //menuju ke detail wisata
            context,
            MaterialPageRoute(
                builder: (context) => DetailWisata(
                      wisata: wisata,
                    )));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(wisata.gambar_wisata!),
          ),
          title: Text(wisata.nama_wisata!),
          subtitle: Text(wisata.alamat_wisata!),
          trailing: Icon(Icons.arrow_forward_rounded),
        ),
      ),
    );
  }
}
