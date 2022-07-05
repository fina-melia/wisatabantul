import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; //import carousel slider

class Beranda extends StatefulWidget {
  Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final List<String> imgList = [
    //menyimpan link gambar
    'https://happytour.id/wp-content/uploads/sites/30/2018/07/PantaiGoaCemara1.jpg',
    'https://happytour.id/wp-content/uploads/sites/30/2018/07/PantaiGoaCemara2.jpg',
    'https://happytour.id/wp-content/uploads/sites/30/2018/07/PantaiGoaCemara3.jpg',
    'https://happytour.id/wp-content/uploads/sites/30/2018/07/PantaiGoaCemara2.jpg',
    'https://happytour.id/wp-content/uploads/sites/30/2018/07/PantaiGoaCemara3.jpg'
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: Container(
          padding: EdgeInsets.all(7),
          child: Image.asset(
            "assets/menu.png",
            height: 20,
            width: 20,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo2.png",
              height: 20,
              width: 20,
            ),
            Text(
              "Wisata Bantul",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: Builder(
        // mengatur image slide
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              autoPlay: true,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
