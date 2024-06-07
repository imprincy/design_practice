import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstViewModel extends ChangeNotifier {
  List<dynamic> categories = [];
  List<dynamic>items=[];
  List<dynamic>breakfast=[];

  void apiCalling() async {
    String allData = await rootBundle.loadString('assets/test/category.json');
    dynamic data = json.decode(allData);
    categories = data["categories"];
    items=data['items'];
    breakfast=data['breakfast'];
  }
}
