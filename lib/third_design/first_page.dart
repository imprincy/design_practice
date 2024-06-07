import 'dart:math';

import 'package:design_project/third_design/small_container_custom.dart';
import 'package:design_project/third_design/watch_model_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return WatchViewModel();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Consumer<WatchViewModel>(builder:
            (BuildContext context, WatchViewModel value, Widget? child) {
          if (value.card.isEmpty) {
            value.watchDataCalling();
          }

          if(value.card.isNotEmpty) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery
                                  .sizeOf(context)
                                  .height * 0.070,
                              width: MediaQuery
                                  .sizeOf(context)
                                  .width * 0.16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.grey.shade900),
                              child: const Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payment",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Convenient Payment",
                                  style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                                )
                              ],
                            ),
                            Container(
                              height: MediaQuery
                                  .sizeOf(context)
                                  .height * 0.070,
                              width: MediaQuery
                                  .sizeOf(context)
                                  .width * 0.16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.grey.shade900,
                              ),
                              child: const Icon(
                                Icons.keyboard_control,
                                size: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 22.0, right: 22, top: 32),
                        child: Container(
                          width: MediaQuery
                              .sizeOf(context)
                              .width,
                          height: MediaQuery
                              .sizeOf(context)
                              .height * 0.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey.shade600,
                                    Colors.grey.shade900
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            value.card[0]['title'],
                                            style: TextStyle(
                                                color: Colors.yellow.shade400,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            value.card[0]['subtitle'],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.abc_sharp,
                                        color: Colors.yellow.shade200,
                                        size: 32,
                                      )
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 18.0, top: 18),
                                    child: Text(
                                      value.detail[0]['title'],
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  subtitle: Text(
                                    value.detail[0]['subtitle'],
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 14.0, left: 14),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            value.cardDetail[0]["text1"],
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey.shade500),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(value.cardDetail[0]["text2"],
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey.shade300)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(value.cardDetail[0]["text3"],
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey.shade500,
                                                  fontWeight: FontWeight.bold)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(value.cardDetail[0]["text4"],
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white)),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 16),
                        child: Row(
                          children: [
                            Text(
                              "Payment",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Method",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Wrap(
                          children: List.generate(
                              3,
                                  (index) =>
                                  GestureDetector(
                                      onTap: () {},
                                      child: SmallContainer(
                                        paymentType: index == 0
                                            ? 'PayPal'
                                            : index == 1
                                            ? "Apple"
                                            : "Add",
                                      ))).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: value.quantity.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  value.quantity[index]["text1"],
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 18),
                                ),
                                Text(
                                  value.quantity[index]['text2'],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          width: MediaQuery
                              .sizeOf(context)
                              .width,
                          height: MediaQuery
                              .sizeOf(context)
                              .height * 0.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              gradient: LinearGradient(colors: [
                                Colors.orange.shade200,
                                Colors.orange.shade100
                              ])),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 22.0, right: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Confirmation",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black.withOpacity(0.7),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black.withOpacity(0.4),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black.withOpacity(0.2),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black.withOpacity(0.1),
                                      size: 18,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}
