import 'package:flutter/material.dart';

class StackAndContainerCustom extends StatelessWidget {
  const StackAndContainerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text("Container and Stack Custom"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).height * 0.25,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          width: MediaQuery.sizeOf(context).width * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.brown.shade200,
                          ),
                          child: Icon(
                            Icons.add_business_rounded,
                            size: 40,
                          )),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.11,
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.yellow.shade200,
                        ),
                        child: Icon(
                          Icons.add_business_rounded,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.11,
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.brown.shade200,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height * 0.05,
                                      width: MediaQuery.sizeOf(context).width * 0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height * 0.05,
                                      width: MediaQuery.sizeOf(context).width * 0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height * 0.05,
                                      width: MediaQuery.sizeOf(context).width * 0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height * 0.05,
                                      width: MediaQuery.sizeOf(context).width * 0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 16,
                            child: Text('8'),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
