import 'package:design_project/second_design/custom_of_container.dart';
import 'package:design_project/second_design/view_model_first.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: ChangeNotifierProvider(create: (BuildContext context) {
        return FirstPageViewModel();
      }, child: Scaffold(
        body: Consumer<FirstPageViewModel>(
          builder: (BuildContext context, value, Widget? child) {
            if (value.hoodie.isEmpty) {
              value.apiWishlistCalling();
            }
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: value.hoodie.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(right: 4.0, bottom: 4),
                            child: CustContainer(
                              image: value.hoodie[index]['image'],
                            ),
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.arrow_back_ios_rounded),
                            ),
                            Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w900),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.add_shopping_cart),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, left: 8, top: 16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 26,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "4.2",
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "(34 Reviews)",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.red.shade900,
                          size: 26,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Double Distilled Hoddie",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SELECT SIZE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "RP. 200.000",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 54,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        if (value.size.isEmpty) {
                          value.apiWishlistCalling();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.12,
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            color: Colors.grey.shade200,
                            child:
                                Center(child: Text(value.size[index]["title"])),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          value.delivery[0]["title"],
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.grey.shade200,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: Center(
                        child: ListTile(
                          leading: Container(
                              color: Colors.grey.shade300,
                              width: MediaQuery.sizeOf(context).width * 0.17),
                          title: const Text(
                            "Standard Delivery",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          trailing: const Text(
                            "24 Feb - 26 Feb",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Specification",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )),
    );
  }
}
