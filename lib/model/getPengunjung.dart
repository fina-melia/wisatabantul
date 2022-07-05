class getPengunjung {
  String? name;
  String? jumlah;
  String? bulan;
  String? id_pengunjung;

  getPengunjung({this.name, this.jumlah, this.bulan, this.id_pengunjung});

  factory getPengunjung.fromJson(Map<String, dynamic> obj) {
    return getPengunjung(
      name: obj['name'],
      jumlah: obj['jumlah'],
      bulan: obj['bulan'],
      id_pengunjung: obj['id_pengunjung'],
    );
  }
}
