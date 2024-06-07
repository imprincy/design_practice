import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WatchViewModel extends ChangeNotifier{
  List<dynamic>card=[];
  List<dynamic>detail=[];
  List<dynamic>cardDetail=[];
  List<dynamic>quantity=[];

  void watchDataCalling()async{
    String data=await rootBundle.loadString('assets/test/watch.json');
    dynamic allData=json.decode(data);
    card=allData['card'];
    detail=allData['detail'];
    cardDetail=allData['cardDetail'];
    quantity=allData['quantity'];
    notifyListeners();
  }
}