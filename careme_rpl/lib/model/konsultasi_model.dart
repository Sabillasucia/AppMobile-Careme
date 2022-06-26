class konsultasiModel {
  String? id_konsultasi;

  konsultasiModel({this.id_konsultasi});

  factory konsultasiModel.fromMap(map) {
    return konsultasiModel(
      id_konsultasi: map('id_konsultasi'),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id_konsultasi': id_konsultasi,
    };
  }
}
