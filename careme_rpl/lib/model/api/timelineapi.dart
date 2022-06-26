import 'dart:convert';

import 'package:careme_rpl/model/timeline_model.dart';
import 'package:http/http.dart' as https;

class TimelineApi {
  Future<List<dynamic>> getAgenda() async {
    final response = await https.get(Uri.parse(
        "https://timeline-3d95e-default-rtdb.firebaseio.com/timeline.json"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body)
          .map((e) => AgendaModel.fromJson(e))
          .toList();
    } else {
      throw Exception('error');
    }
  }
}
