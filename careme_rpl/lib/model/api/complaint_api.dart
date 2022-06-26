import 'dart:convert';
import 'package:careme_rpl/model/complaint_model.dart';
import 'package:http/http.dart' as http;

class ComplaintAPI {
  static Future sendUserComplaint({ComplaintModel? complaint}) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json'
        },
        body: jsonEncode({
          'service_id': 'service_niqtboa',
          'template_id': 'template_ttwd275',
          'user_id': '9RTxNLQ8wJNRvdr5G',
          'template_params': complaint
        }));
    print(response.body);
    return response;
  }
}
