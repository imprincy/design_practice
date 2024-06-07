import 'dart:math';

import 'package:design_project/custom_stack.dart';
import 'package:design_project/first_design/custom_container.dart';
import 'package:design_project/first_design/model_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return FirstViewModel();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              selectedLabelStyle: const TextStyle(fontSize: 0),
              items: const [
                BottomNavigationBarItem(
                    icon: Text(
                      "Home",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.call,
                      size: 30,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.laptop_chromebook,
                      size: 30,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outlined,
                      size: 30,
                    ),
                    label: "")
              ],
            ),
          ),
        ),
        body: Consumer<FirstViewModel>(
          builder: (BuildContext context, FirstViewModel value, Widget? child) {
            if (value.categories.isEmpty) {
              value.apiCalling();
            }
            return Padding(
              padding: const EdgeInsets.only(top: 44.0, left: 8, right: 8),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 2, top: 2, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 2.0, bottom: 2, left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2464 Royal Ln.Mesa",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text(
                                  "Your address",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(24)),
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.125,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.green,
                                    size: 22,
                                  ),
                                  Text(
                                    "02",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                        fontSize: 22),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                                Icon(
                                  Icons.search_rounded,
                                  color: Colors.grey,
                                  size: 20,
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    children: List.generate(
                            value.categories.length,
                            (index) => StackCustom(
                                text: value.categories[index]['title'],
                                text2: value.categories[index]['subtitle']))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DefaultTabController(
                      length: 3,
                      child: TabBar(
                        indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide.none),
                        dividerColor: Colors.transparent,
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                        labelStyle: const TextStyle(color: Colors.black),
                        tabs: const [
                          Tab(
                            icon: Text(
                              "Flash Sale",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            icon: Text("Popular",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Tab(
                            icon: Text("New Arrival",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    children: List.generate(
                        value.items.length,
                        (index) => CustomContainer(
                            image: value.items[index]["image"],
                            title: value.items[index]["title"],
                            subtitle: value.items[index]["subtitle"],
                            amount: value.items[index]["amount"])).toList()
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
