import 'package:flutter/material.dart';

class StackCustom extends StatelessWidget {
  final String text;
  final String text2;

  const StackCustom({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: MediaQuery.sizeOf(context).height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: Image.network(
                  text,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.fill,
                ).image,
                fit: BoxFit.fill
              )
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: MediaQuery.sizeOf(context).height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    colors: [Colors.transparent, Colors.white],
                    stops: [0.0, 0.5],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  text2,
                ),),
          ),
        ],
      ),
    );
  }
}
