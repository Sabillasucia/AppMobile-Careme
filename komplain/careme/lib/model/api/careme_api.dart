import 'dart:convert';
import '../careme_model.dart';
import 'package:http/http.dart' as http;
class CareMeAPI{
  getBannerCareMe() async {

      final response = await http.get(Uri.parse("https://careme-3af5c-default-rtdb.firebaseio.com/Banner.json"));
      var dataResponse = jsonDecode(response.body);
      final careMeBannerList = (dataResponse as List)
          .map((e) => CareMe(
              title: e['title'],  
              image: e['image']
              ))
          .toList();
      return careMeBannerList;
  }
} 