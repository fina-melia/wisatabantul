import 'package:wisatabantul/model/getWisata.dart';
import 'package:wisatabantul/bloc/getWisataBloc.dart';
import 'package:flutter/material.dart';

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
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                trailing: const Icon(Icons.task_sharp),
                title: const Text('Data Wisata'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => dataWisata()));
                },
              ),
            ],
          ),
        ),
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
      child: Card(
        child: ListTile(
          title: Text(wisata.nama_wisata!),
          subtitle: Text(wisata.alamat_wisata!),
        ),
      ),
    );
  }
}
