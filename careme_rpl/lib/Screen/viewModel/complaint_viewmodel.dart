import 'package:careme_rpl/Screen/complain_screen.dart';
import 'package:careme_rpl/model/api/complaint_api.dart';
import 'package:flutter/material.dart';
// import 'package:manga_time/models/report_model/report_api/report_api.dart';

class ComplaintViewModel extends ChangeNotifier {
  postComplaint(complaint) async {
    await ComplaintAPI.sendUserComplaint(complaint: complaint);
  }
}
