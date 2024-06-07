import 'dart:math';

import 'package:design_project/first_design/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final String image;
  final String text;
  final String text2;
  final String text3;

  const ContainerCustom(
      {super.key,
      required this.image,
      required this.text,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.46,
            height: MediaQuery.sizeOf(context).height * 0.24,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                .withOpacity(0.1),
            child: Image.network(image),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.46,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.heart_broken,
                color: Colors.red,
                size: 18,
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.46,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text2,
                  style: const TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Text(
                      text3,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
