import 'dart:convert';
//
import 'package:wisatabantul/helpers/api.dart';
import 'package:wisatabantul/helpers/api_url.dart';
import 'package:wisatabantul/model/getPengunjung.dart';

class getPengunjungBloc {
  static Future<List<getPengunjung>> presensi() async {
    String apiUrl = ApiUrl.getpengunjung;
    var response = await Api().get(Uri.parse(apiUrl));
    var jsonObj = json.decode(response.body);
    List<dynamic> listPengunjung = (jsonObj as Map<String, dynamic>)['data'];
    List<getPengunjung> showPengunjung = [];
    for (int i = 0; i < listPengunjung.length; i++) {
      showPengunjung.add(getPengunjung.fromJson(listPengunjung[i]));
    }
    return showPengunjung;
  }
}
