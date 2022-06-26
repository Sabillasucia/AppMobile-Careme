// ignore_for_file: dead_code

class UserModel {
  String? uid;
  String? email;
  String? namalengkap;
  String? kelamin;
  String? telepon;
  String? nik;
  String? password;

  UserModel(
      {this.uid,
      this.email,
      this.namalengkap,
      this.kelamin,
      this.telepon,
      this.nik,
      this.password});

  //receiving Data From Server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map["uid"],
        email: map['email'],
        namalengkap: map['namalengkap'],
        kelamin: map['kelamin'],
        telepon: map['telepon'],
        nik: map['nik'],
        password: map['password']);
  }

  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namalengkap': namalengkap,
      'kelamin': kelamin,
      'telepon': telepon,
      'nik': nik,
      'password': password,
    };
  }
}
