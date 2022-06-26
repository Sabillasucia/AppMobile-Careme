import 'dart:convert';

import 'package:caremetimeline/timeline/model/timeline_model.dart';
import 'package:http/http.dart' as https;

class TimelineApi {
  Future<List<dynamic>> getPsikolog() async {
    final response = await https.get(Uri.parse(
        "https://careme-f54df-default-rtdb.firebaseio.com/timeline.json"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body)
          .map((e) => AgendaModel.fromJson(e))
          .toList();
    } else {
      throw Exception('error');
    }
  }
}
