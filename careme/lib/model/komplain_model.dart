class KomplainModel{
  int? idkomplain;
  int? iduser;
  String? jeniskomplain;
  String? deskripsi;
  bool? status;

  KomplainModel({this.idkomplain, this.iduser, this.jeniskomplain, this.deskripsi, this.status});

  factory KomplainModel.fromMap(map){
    return KomplainModel(
      idkomplain: map('idkomplain'),
      iduser: map('iduser'),
      jeniskomplain: map('jeniskomplain'),
      deskripsi: map('deskripsi'),
      status: map('status')
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'idkomplain': idkomplain,
      'iduser':iduser,
      'jeniskomplain':jeniskomplain,
      'deskripsi':deskripsi,
      'status':status
    };
  }
}