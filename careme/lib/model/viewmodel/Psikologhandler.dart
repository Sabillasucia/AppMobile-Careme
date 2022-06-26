import 'package:careme/model/Psikolog_model.dart';
import 'package:flutter/material.dart';
import 'package:careme/model/api/psikologapi.dart';

class ViewModelPsikolog extends ChangeNotifier{
  List lspsikolog = [];
  getPsikologs()async{
    final getAllPsikolog = await PsikologApi().getPsikolog();
    lspsikolog = getAllPsikolog;
    notifyListeners();
  }
}