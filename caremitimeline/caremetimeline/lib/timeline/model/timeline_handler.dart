import 'package:caremetimeline/timeline/model/timeline_model.dart';
import 'package:flutter/material.dart';
import 'package:caremetimeline/timeline/model/timelineapi.dart';

class ViewModelTimeline extends ChangeNotifier {
  List<dynamic> result = [];
  List<dynamic> get listsearch => result;
  List listtimeline = [];
  getPsikologs() async {
    final getAllPsikolog = await TimelineApi().getPsikolog();
    listtimeline = getAllPsikolog;
    notifyListeners();
  }

  getSearch(query) async {
    final getAllPsikolog = await TimelineApi().getPsikolog();
    listtimeline = getAllPsikolog;
    result = listtimeline.where(
      (element) {
        return element.nama_artikel!
            .toLowerCase()
            .contains(query.toLowerCase());
      },
    ).toList();
  }
}
