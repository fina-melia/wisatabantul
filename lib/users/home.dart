import 'package:flutter/material.dart';
import 'package:wisatabantul/ui/Pengunjungpage.dart';
import 'package:wisatabantul/ui/data-wisata.dart';
import 'package:wisatabantul/users/beranda.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottonNavCurrentIndex = 0; //bottom navigator
  final List<Widget> _container = [
    new Beranda(),
    new dataWisata(),
    new PengunjungPage(),
  ];

  get split => null;
  @override
  Widget build(BuildContext context) {
    var arrow_branch;
    return Scaffold(
      //menampilkan bottom navbar
      body: _container[_bottonNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottonNavCurrentIndex = index;
          });
        },
        currentIndex: _bottonNavCurrentIndex,
        items: [
          // mengisi battom navigation
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors
                  .green, //saat dikilik icon tersebut akan berubah menjadi warna hijau
            ),
            icon: new Icon(
              // pada saat icon sedang tidak diklik
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda', //dengan label beranda
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.fork_left,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.fork_left,
              color: Colors.grey,
            ),
            label: 'Wisata',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.analytics,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.analytics,
              color: Colors.grey,
            ),
            label: 'Pengunjung',
          ),
        ],
      ),
    );
  }
}
