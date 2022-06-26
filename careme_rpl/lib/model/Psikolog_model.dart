class PsikologModel {
  int? id_psikolog, umur, rating, harga;
  String? nama, username, password,image, status;

  PsikologModel({ this.id_psikolog, this.nama,this.umur, this.username, this.password, this.rating, this.harga, 
  this.image, this.status});

  factory PsikologModel.fromJson(Map<String,dynamic>json) {
    return PsikologModel(
      id_psikolog: json['id_psikolog'],
      nama: json['nama'],
      umur: json['umur'],
      username: json['username'],
      password: json['password'],
      rating: json['rating'],
      harga: json['harga'],
      image: json['image'], 
      status: json['status']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_psikolog': id_psikolog,
      'nama': nama,
      'umur': umur,
      'username': username,
      'password': password,
      'rating' : rating,
      'harga' : harga,
      'image' : image,
      'status' : status,
    };
  }
}
