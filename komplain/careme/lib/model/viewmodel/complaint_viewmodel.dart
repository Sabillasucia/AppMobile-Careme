import 'package:careme/home/complaint_screen.dart';
import 'package:careme/model/api/complaint_api.dart';
import 'package:flutter/material.dart';
// import 'package:manga_time/models/report_model/report_api/report_api.dart';

class ComplaintViewModel extends ChangeNotifier {
  postComplaint(complaint) async {
    await ComplaintAPI.sendUserComplaint(complaint: complaint);
  }
}