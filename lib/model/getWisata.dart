class getWisata {
  String? nama_wisata;
  String? info_wisata;
  String? alamat_wisata;
  String? id_wisata;

  getWisata(
      {this.nama_wisata, this.info_wisata, this.alamat_wisata, this.id_wisata});

  factory getWisata.fromJson(Map<String, dynamic> obj) {
    return getWisata(
      nama_wisata: obj['nm_wisata'],
      info_wisata: obj['info_wisata'],
      alamat_wisata: obj['alamat_wisata'],
      id_wisata: obj['id_wisata'],
    );
  }
}
