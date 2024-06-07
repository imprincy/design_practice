import 'package:design_project/first_design/custom_container.dart';
import 'package:design_project/first_design/model_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return FirstViewModel();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          surfaceTintColor: Colors.grey.shade300,
          leadingWidth: 100,
          centerTitle: true,
          backgroundColor: Colors.grey.shade300,
          toolbarHeight: 100,
          leading: Center(
              child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.5),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding:
                  EdgeInsets.only(left: 16.0, right: 16, top: 6, bottom: 6),
              child: Text(
                "Back",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.green),
              ),
            ),
          )),
          title: const Text(
            "Items",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 1.5)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16.0, right: 16, top: 6, bottom: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        "02",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        body: Consumer<FirstViewModel>(
          builder: (BuildContext context, FirstViewModel value, Widget? child) {
            if (value.breakfast.isEmpty) {
              value.apiCalling();
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  DefaultTabController(
                      length: 4,
                      child: TabBar(
                        indicatorColor: Colors.transparent,
                        labelColor: Colors.black,
                        isScrollable: true,
                        padding: EdgeInsets.zero,
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.all(8),
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                        tabs: const [
                          Tab(
                            icon: Text(
                              "Snacks",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                          Tab(
                            icon: Text(
                              "Breakfast",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                          Tab(
                            icon: Text(
                              "Canned",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                          Tab(
                            icon: Text(
                              "Test",
                              style: TextStyle(fontSize: 28),
                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                      children: List.generate(
                              value.breakfast.length,
                              (index) => CustomContainer(
                                  image: value.breakfast[index]['image'],
                                  title: value.breakfast[index]['title'],
                                  subtitle: value.breakfast[index]['subtitle'],
                                  amount: value.breakfast[index]['amount']))
                          .toList())
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
