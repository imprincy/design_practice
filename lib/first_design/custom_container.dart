import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String amount;

  const CustomContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.28,
        width: MediaQuery.sizeOf(context).width * 0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  image,
                  height: MediaQuery.sizeOf(context).height * 0.155,
                  width: double.infinity,
                ),
              ),
              Text(title),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(amount),
                  const Icon(
                    Icons.add_circle,
                    color: Colors.black,
                    size: 24,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
