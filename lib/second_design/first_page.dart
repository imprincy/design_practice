import 'package:design_project/second_design/container_custom.dart';
import 'package:design_project/second_design/view_model_first.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) {
          return FirstPageViewModel();
        },
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedFontSize: 16,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            unselectedFontSize: 16,
            // onTap: (index) {
            //   // if (index == 1) {
            //     print(index);
            //       pageController.animateToPage(index,
            //           duration: Duration(milliseconds: 500),
            //           curve: Curves.easeIn);
            //   // }
            // },
            selectedLabelStyle:
                const TextStyle(fontSize: 16, color: Colors.black),
            unselectedLabelStyle:
                const TextStyle(fontSize: 16, color: Colors.black),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 20,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.heart_broken_sharp,
                    color: Colors.grey,
                    size: 20,
                  ),
                  label: "Wishlist"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                    color: Colors.grey,
                    size: 20,
                  ),
                  label: "Message"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 20,
                  ),
                  label: "Profile")
            ],
          ),
          appBar: AppBar(
            centerTitle: true,
            leading: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey.shade400, width: 2)),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade500,
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
            title: const Text(
              'Wishlist',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey.shade400, width: 2)),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey.shade500,
                  child: const Icon(
                    Icons.add_business_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          body: Consumer<FirstPageViewModel>(
            builder: (BuildContext context, FirstPageViewModel value,
                Widget? child) {
              if (value.wishlist.isEmpty) {
                value.apiWishlistCalling();
              }

               // return PageView(
               //  controller: pageController,
               //  children: [
               //     Container(
               //       child: Center(child: Text('Home')),
               //     ),
               //     Container(
               //       child: Center(child: Text('Wishlist')),
               //    ),
               //    Container(
               //      child: Center(child: Text('Message')),
               //    ),
               //    Container(
               //      child: Center(child: Text('Profile')),
               //    ),
               //  ],
               // );

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Wrap(
                    children: List.generate(
                        value.wishlist.length,
                        (index) => ContainerCustom(
                            image: value.wishlist[index]['image'],
                            text: value.wishlist[index]['text'],
                            text2: value.wishlist[index]['text2'],
                            text3: value.wishlist[index]['text3'])).toList(),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
