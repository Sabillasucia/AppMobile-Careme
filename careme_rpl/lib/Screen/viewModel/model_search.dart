import 'package:flutter/material.dart';
import 'package:careme_rpl/model/api/timelineapi.dart';

class ViewModelSearch extends ChangeNotifier {
  List<dynamic> result = [];
  List<dynamic> get listsearch => result;
  List listtimeline = [];
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
