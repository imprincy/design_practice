import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstPageViewModel extends ChangeNotifier{
  List<dynamic>wishlist=[];
  List<dynamic>hoodie=[];
  List<dynamic>size=[];
  List<dynamic>delivery=[];

  void apiWishlistCalling ()async{
    String data=await rootBundle.loadString('assets/test/wishlist.json');
    dynamic allData=json.decode(data);
    wishlist=allData['wishlist'];
    hoodie=allData['hoodie'];
    size=allData['size'];
    delivery=allData['delivery'];
    notifyListeners();
  }
}