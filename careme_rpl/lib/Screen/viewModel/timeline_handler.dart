import 'package:careme_rpl/model/timeline_model.dart';
import 'package:flutter/material.dart';
import 'package:careme_rpl/model/api/timelineapi.dart';

class ViewModelTimeline extends ChangeNotifier {
  List<dynamic> result = [];
  List<dynamic> get listsearch => result;
  List listtimeline = [];
  getAgendas() async {
    final getAllAgenda = await TimelineApi().getAgenda();
    listtimeline = getAllAgenda;
    notifyListeners();
  }

  getSearch(query) async {
    final getAllAgenda = await TimelineApi().getAgenda();
    listtimeline = getAllAgenda;
    result = listtimeline.where(
      (element) {
        return element.nama_artikel!
            .toLowerCase()
            .contains(query.toLowerCase());
      },
    ).toList();
  }
}
