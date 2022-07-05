class ApiUrl {
  //ini adalah menyimpan alamat-alamat API yang telah dibuat sebelumnya
  static const String baseUrl = 'http://192.168.43.69/';

  static const String getWisatas = baseUrl + 'wisata/public/get-data';

  static String detailwisata(int id) {
    return baseUrl + 'wisata/public/get-detail/' + id.toString();
  }

  static const String getpengunjung = baseUrl + 'wisata/public/get-pengunjung';
}
