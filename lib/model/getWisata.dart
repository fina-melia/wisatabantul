class getWisata {
  String? nama_wisata;
  String? info_wisata;
  String? alamat_wisata;
  String? gambar_wisata;
  String? htm_wisata;
  String? fasilitas;
  String? id_wisata;

  getWisata(
      {this.nama_wisata,
      this.info_wisata,
      this.alamat_wisata,
      this.gambar_wisata,
      this.htm_wisata,
      this.fasilitas,
      this.id_wisata});

  factory getWisata.fromJson(Map<String, dynamic> obj) {
    return getWisata(
      nama_wisata: obj['nm_wisata'],
      info_wisata: obj['info_wisata'],
      alamat_wisata: obj['alamat_wisata'],
      gambar_wisata: obj['gambar_wisata'],
      htm_wisata: obj['htm_wisata'],
      fasilitas: obj['fasilitas'],
      id_wisata: obj['id_wisata'],
    );
  }
}
