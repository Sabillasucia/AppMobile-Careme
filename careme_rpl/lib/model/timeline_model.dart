class AgendaModel {
  int id_timeline;
  String nama_artikel;
  String deskripsi;
  String imageURL;
  String kategori;
  String isiArtikel;

  AgendaModel({
    required this.id_timeline,
    required this.nama_artikel,
    required this.deskripsi,
    required this.isiArtikel,
    required this.imageURL,
    required this.kategori,
  });

  factory AgendaModel.fromJson(Map<String, dynamic> json) {
    return AgendaModel(
      id_timeline: json['id_timeline'],
      nama_artikel: json['nama_artikel'],
      deskripsi: json['deskripsi'],
      imageURL: json['imageURL'],
      kategori: json['kategori'],
      isiArtikel: json['isiArtikel'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_timeline': id_timeline,
      'nama_artikel': nama_artikel,
      'deskripsi': deskripsi,
      'imageURL': imageURL,
      'kategori': kategori,
      'isiArtikel': isiArtikel,
    };
  }
}
