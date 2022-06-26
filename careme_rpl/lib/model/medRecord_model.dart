class MedModel{
  int? idMed;
  int? idUser;
  String? isi_diagnosa;
  DateTime? date;

  MedModel({this.idMed, this.idUser, this.isi_diagnosa, this.date});

  factory MedModel.fromMap(map){
    return MedModel(
      idMed: map('idMed'),
      idUser: map('idUser'),
      isi_diagnosa: map('isi_diagnosa'),
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'idMed':idMed,
      'idUser':idUser,
      'isi_diagnosa':isi_diagnosa
    };
  }
}