
import 'dart:math';

import 'package:flutter/material.dart';

class CustContainer extends StatelessWidget {
  final String image;
  const CustContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.2),
      height: MediaQuery.sizeOf(context).height*0.30,
      width: MediaQuery.sizeOf(context).width*0.50,
      child: Image.network(image),
    );
  }
}
