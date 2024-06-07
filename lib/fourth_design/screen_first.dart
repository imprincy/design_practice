import 'package:flutter/material.dart';

class FemaleOutfit extends StatelessWidget {
  const FemaleOutfit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        centerTitle: true,
        leadingWidth: 25,
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 16),
                      child: Text(
                        "Shipping Address",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "4140 Parker Rd,Allentown,New Mexico 31134",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.location_on_sharp),
                      trailing: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 1),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 5, bottom: 5),
                            child: Text(
                              "CHANGE",
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16, top: 8, bottom: 8),
                      child: Divider(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 16),
                      child: Text(
                        "Choose Shipping Type",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Economy",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Estimated Arrival on 24/12/2023",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.border_all),
                      trailing: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 1),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 5, bottom: 5),
                            child: Text(
                              "CHANGE",
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16, top: 8, bottom: 8),
                      child: Divider(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 16),
                      child: Text(
                        "Order List",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            color: Colors.greenAccent.withOpacity(0.2),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    "Blue Jacket",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    "Size : XL",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    "83.97",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16, top: 8, bottom: 8),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            color: Colors.yellow.withOpacity(0.2),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "Blue Jacket",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade700,
                      minimumSize: const Size(20, 50)),
                  onPressed: () {},
                  child: const Text(
                    'Continue to Payment',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
