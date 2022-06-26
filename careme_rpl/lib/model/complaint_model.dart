class ComplaintModel{
  String? name;
  String? email;
  String? message;

  ComplaintModel({this.name, this.email, this.message});

  factory ComplaintModel.fromJson(Map<String, dynamic> json) => ComplaintModel(
    name: json['name'],
    email: json['email'],
    message: json['message']
  );

  Map<String, dynamic> toJson() => {
    "name" : name,
    "email" : email,
    "message" : message
  };
}