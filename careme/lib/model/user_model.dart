// ignore_for_file: dead_code

class UserModel {
  String? uid;
  String? email;
  String? namalengkap;
  String? tanggallahir;
  String? kelamin;
  String? telepon;
  String? nik;
  String? password;

  UserModel(
      {this.uid,
      this.email,
      this.namalengkap,
      this.tanggallahir,
      this.kelamin,
      this.telepon,
      this.nik,
      this.password});

  //receiving Data From Server
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      uid: json["uid"],
      email: json['email'],
      namalengkap: json['namalengkap'],
      tanggallahir: json['tanggallahir'],
      kelamin: json['kelamin'],
      telepon: json['telepon'],
      nik: json['nik'],
      password: json['password']);

  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namalengkap': namalengkap,
      'tanggallahir': tanggallahir,
      'kelamin': kelamin,
      'telepon': telepon,
      'nik': nik,
      'password': password,
    };
  }
}
