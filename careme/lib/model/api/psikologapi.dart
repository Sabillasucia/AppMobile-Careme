import 'dart:convert';

import 'package:careme/model/Psikolog_model.dart';
import 'package:http/http.dart' as https;

class PsikologApi {
  Future<List<dynamic>>getPsikolog() async{
    final response = await https.get(Uri.parse("https://careme-fd500-default-rtdb.firebaseio.com/psikolog.json"));
    if(response.statusCode == 200 ) {
      return jsonDecode(response.body).map((e) => PsikologModel.fromJson(e)).toList() ;
    } else {
      throw Exception('error');
    }
  }
}