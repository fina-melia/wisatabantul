import 'package:flutter/material.dart';
import 'package:wisatabantul/ui/data-wisata.dart';
import 'package:wisatabantul/users/beranda.dart';
import 'package:wisatabantul/users/berita.dart';
import 'package:wisatabantul/users/pengunjung.dart';
import 'package:wisatabantul/users/wisata.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottonNavCurrentIndex = 0;
  final List<Widget> _container = [
    new Beranda(),
    new dataWisata(),
    new Pengunjung(),
    new Berita()
  ];

  get split => null;
  @override
  Widget build(BuildContext context) {
    var arrow_branch;
    return Scaffold(
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
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda',
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
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.language,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.language,
              color: Colors.grey,
            ),
            label: 'Berita',
          ),
        ],
      ),
    );
  }
}
