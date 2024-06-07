import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String word;
  const TextContainer({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          print("hi");
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
                borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1,color: Colors.grey.shade400)
          ),child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10,top: 4,bottom: 4),
            child: Text(word,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
        ),
      ),
    );
  }
}
