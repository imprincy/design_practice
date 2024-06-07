import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeViewModel extends ChangeNotifier{
  List<dynamic>item=[];
  List<dynamic>category=[];
  List<dynamic>Sale=[];

  void homeApiCalling()async{
    String response=await rootBundle.loadString('assets/test/dress.json');
    dynamic allData=json.decode(response);
    item=allData['item'];
    category=allData['category'];
    Sale=allData['Sale'];
    notifyListeners();
  }

}