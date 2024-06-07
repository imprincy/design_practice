import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            ExpansionTile(
              textColor: Theme.of(context).textTheme.bodyLarge!.color,
              childrenPadding: EdgeInsets.only(left: 28),
              shape: Border.all(color: Colors.white),
              title: const Text("Categories"),
              trailing: const Icon(Icons.arrow_drop_down_sharp),
              children: [
                ListTile(
                  title: const Text("All clothing"),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("All Bags"),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("All Beauty Products"),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("All Footwear"),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
