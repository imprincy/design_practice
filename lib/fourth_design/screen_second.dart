import 'package:design_project/fourth_design/model_view_home.dart';
import 'package:design_project/fourth_design/text_Container_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return HomeViewModel();
      },
      child: Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: BottomNavigationBar(
                    elevation: 1,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.teal.shade800,
                    unselectedItemColor: Colors.white,
                    selectedItemColor: Colors.white,
                    showSelectedLabels: false,
                    selectedLabelStyle: const TextStyle(fontSize: 0),
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home,
                            size: 30,
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            size: 30,
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.bedtime_outlined,
                            size: 30,
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.message_outlined,
                            size: 30,
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.person_outlined,
                            size: 30,
                          ),
                          label: "")
                    ]),
              ),
            ),
          ),
          body: Consumer<HomeViewModel>(
            builder:
                (BuildContext context, HomeViewModel value, Widget? child) {
              if (value.item.isEmpty) {
                value.homeApiCalling();
              }

              if (value.item.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return SafeArea(
                  // this is wrong always  put safe area top of Scaffold
                  minimum: const EdgeInsets.only(top: 42, left: 10, right: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.teal,
                                    size: 26,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Surat, Gujrat",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(Icons.keyboard_arrow_down,
                                      color: Colors.black, size: 26)
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.indigo.shade50,
                              child: const Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.black,
                                    size: 32,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // why i am not able to open keyboard in search field
                              width: MediaQuery.sizeOf(context).width * 0.75,
                              height: MediaQuery.sizeOf(context).height * 0.06,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      width: 0.7, color: Colors.black)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.search_rounded),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Search",
                                          labelStyle: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.13,
                              height: MediaQuery.sizeOf(context).height * 0.06,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.teal.shade700),
                              child: const Icon(
                                Icons.density_small,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: MediaQuery.sizeOf(context).width,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.teal.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16.0, right: 8, top: 22),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                value.item[0]['heading'],
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                value.item[0]['title'],
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              TextButton(
                                                  style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.teal.shade700,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8))),
                                                  onPressed: () {},
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 6.0,
                                                            right: 6),
                                                    child: Text(
                                                      value.item[0]['subtitle'],
                                                      style: const TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.white),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        const Icon(
                                          Icons.person,
                                          size: 160,
                                        )
                                      ],
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Category",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    Text(
                                      "See All",
                                      style: TextStyle(
                                          color: Colors.teal, fontSize: 16),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 120,
                                  child: ListView.builder(
                                    itemCount: 4,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2.0, right: 6),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 43,
                                              backgroundColor:
                                                  Colors.teal.withOpacity(0.1),
                                              child: Icon(
                                                Icons.call,
                                                color: Colors.teal.shade800,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              value.category[index]['title'],
                                              style: TextStyle(
                                                  color: Colors.grey.shade500,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Flash Sale",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Closing in :",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 3.0, right: 3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                color: Colors.teal
                                                    .withOpacity(0.1)),
                                            child: const Text(
                                              "02",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 3.0, right: 3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                color: Colors.teal
                                                    .withOpacity(0.1)),
                                            child: const Text(
                                              "12",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 3.0, right: 3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                color: Colors.teal
                                                    .withOpacity(0.1)),
                                            child: const Text(
                                              "56",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: value.Sale.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return TextContainer(
                                          word: value.Sale[index]['title']);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.44,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.20,
                                      child: Card(
                                        color: Colors.teal.shade50,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.44,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.20,
                                      child: Card(
                                        color: Colors.teal.shade50,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            },
          )),
    );
  }
}
//Flutter Internship Task:
//
// Create a simple reminder application. A person has to be reminded on the below activities on daily basis in a span of 24 hour:
//
// [Day of the week]
//
// Wake up
// Go to gym
// Breakfast
// Meetings
// Lunch
// Quick nap
// Go to library
// Dinner
// Go to sleep
// The UI should be based on only drop-down lists for selecting the day of the week, choose the time and the choice of activities as given below. Once the time is up the app should play a sound / chime.
//
// [Drop-down for day] : [Drop-down for choosing the time (clock widget is preferred)] : [Drop-down containing the list of above activities]
