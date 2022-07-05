import 'dart:convert';
// Di dalam folder ini berisis file-file yang berfungsi sebagai
//controller baik itu untuk melakukan proses login, registrasi dan lain-lain
import 'package:wisatabantul/helpers/api.dart';
import 'package:wisatabantul/helpers/api_url.dart';
import 'package:wisatabantul/model/getWisata.dart';

class getWisataBloc {
  static Future<List<getWisata>> presensi() async {
    String apiUrl = ApiUrl.getWisatas;
    var response = await Api().get(Uri.parse(apiUrl));
    var jsonObj = json.decode(response.body);
    List<dynamic> listWisata = (jsonObj as Map<String, dynamic>)['data'];
    List<getWisata> showWisata = [];
    for (int i = 0; i < listWisata.length; i++) {
      showWisata.add(getWisata.fromJson(listWisata[i]));
    }
    return showWisata;
  }
}
