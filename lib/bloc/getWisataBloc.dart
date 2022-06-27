import 'dart:convert';

import 'package:wisatabantul/helpers/api.dart';
import 'package:wisatabantul/helpers/api_url.dart';
import 'package:wisatabantul/helpers/user_info.dart';
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
