class CareMe{
  String? title;
  String? image;

  CareMe({this.title, this.image});

  factory CareMe.fromJson(Map<String, dynamic>json){
    return CareMe(
      title: json['title'],
      image: json['image']
    );
  }
  Map<String, dynamic> toJson(){
    return{
      'title':title,
      'image':image
    };
  }
}