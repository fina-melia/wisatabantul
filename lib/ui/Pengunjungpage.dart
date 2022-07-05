import 'package:flutter/material.dart';
import 'package:wisatabantul/bloc/getPengunjungBloc.dart';
import 'package:wisatabantul/model/getPengunjung.dart';

class PengunjungPage extends StatefulWidget {
  const PengunjungPage({Key? key}) : super(key: key);

  @override
  _PengunjungPageState createState() => _PengunjungPageState();
}

class _PengunjungPageState extends State<PengunjungPage> {
  getPengunjung? pengunjung;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green, title: Text("Data Pengunjung")),
        body: FutureBuilder<List>(
          future: getPengunjungBloc.presensi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ListPengunjung(list: snapshot.data)
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}

class ListPengunjung extends StatelessWidget {
  final List? list;

  const ListPengunjung({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list!.length,
        itemBuilder: (context, i) {
          return ItemPengunjung(pengunjung: list![i]);
        });
  }
}

class ItemPengunjung extends StatelessWidget {
  final getPengunjung pengunjung;
  const ItemPengunjung({Key? key, required this.pengunjung}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(pengunjung.name!),
          subtitle: Text(pengunjung.jumlah!),
          leading: Text(pengunjung.bulan!),
        ),
      ),
    );
  }
}
