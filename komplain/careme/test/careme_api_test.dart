import 'package:careme/model/api/Careme_api.dart';
import 'package:test/test.dart';


void main(){
  test('get all data', () async{
    var response = await CareMeAPI().getBannerCareMe();
    expect(response.isNotEmpty,true);
  });
  
}