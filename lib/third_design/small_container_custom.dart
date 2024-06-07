import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key, required this.paymentType});

  final String paymentType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.093,
        width: MediaQuery.sizeOf(context).height * 0.10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            border: Border.all(color: Colors.grey.shade800, width: 0.6)),
        child: Icon(
          getIcon(),
          color: Colors.orangeAccent.shade200,
          size: 50,
        ),
      ),
    );
  }


  IconData getIcon(){
    if(paymentType == 'PayPal'){
      return Icons.add_business_outlined;
    } else if(paymentType == 'Apple'){
      return Icons.apple;
    } else{
      return Icons.add;
    }
  }

}
