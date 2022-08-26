import 'package:cabzpay/screens/dashboard/dashboard_screen.dart';
import 'package:cabzpay/screens/history/transaction_history.dart';
import 'package:cabzpay/screens/packages/packages_screen.dart';
import 'package:cabzpay/screens/profile/profile_screen.dart';
import 'package:cabzpay/widgets/custom_bottom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    Dashboard(),
    TransactionHistory(),
    PackagesScreen(),
    ProfileScreen()
  ];
  Widget currentScreen = Dashboard();
  final PageStorageBucket _pageStorageBucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                     splashColor: Colors.transparent,
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Dashboard();
                          currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color:
                                currentIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text("Home",
                              style: TextStyle(
                                  color: currentIndex == 0
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                     splashColor: Colors.transparent,

                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = TransactionHistory();
                          currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.history,
                            color:
                                currentIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text("History",
                              style: TextStyle(
                                  color: currentIndex == 1
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                     splashColor: Colors.transparent,

                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = PackagesScreen();
                          currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.tv,
                            color:
                                currentIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text("Package",
                              style: TextStyle(
                                  color: currentIndex == 2
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                     splashColor: Colors.transparent,

                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfileScreen();
                          currentIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color:
                                currentIndex == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text("Profile",
                              style: TextStyle(
                                  color: currentIndex == 3
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: PageStorage(
        bucket: _pageStorageBucket,
        child: currentScreen,
      )),
    );
  }
}
