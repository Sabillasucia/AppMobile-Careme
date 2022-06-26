class TimelineModel {
  int? id_timeline;
  int? id_user;
  String? comment;
  String? caption;
  DateTime? tanggal_post;

  TimelineModel(
      {this.id_timeline,
      this.id_user,
      this.comment,
      this.caption,
      this.tanggal_post});

  factory TimelineModel.fromMap(map) {
    return TimelineModel(
        id_timeline: map('ID Timeline'),
        id_user: map('ID User'),
        comment: map('Comment'),
        caption: map('Caption'),
        tanggal_post: map('Tanggal Post'));
  }

  Map<String, dynamic> toMap() {
    return {
      'ID Timeline': id_timeline,
      'ID User': id_user,
      'Comment': comment,
      'Caption': caption,
      'Tanggal Post': tanggal_post
    };
  }
}
