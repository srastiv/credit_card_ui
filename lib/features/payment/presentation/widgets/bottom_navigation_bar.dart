import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/colors.dart';
import '../screens/blank%20screens/blankscreens.dart';
import '../screens/cart/cartscreen.dart';
import '../screens/home/homescreen.dart';
import '../screens/scan/scanscreen.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  const CustomBottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBarWidget> createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  int currentindex = 0;
  final tabs = [
    const HomeScreen(),
    const NotifsScreen(),
    const ScanScreen(),
    const HistoryScreen(),
    const CartScreen(),
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        currentindex = index;
      });
    } else {
      context.go("/scanscreen");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -7),
                color: Color.fromARGB(159, 194, 192, 192),
                spreadRadius: 20,
                blurRadius: 104),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
            showSelectedLabels: false, // <-- HERE
            showUnselectedLabels: false,
            onTap: (index) {
              _onItemTapped(index);
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: (currentindex == 0)
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: kSkyBlue,
                        ),
                        padding: const EdgeInsets.all(10),
                        height: 47,
                        width: 47,
                        child: Image.asset("assets/icons/home.png"),
                      )
                    : Image.asset("assets/icons/homebw.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: (currentindex == 1)
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: kBrightSkyBlue,
                          ),
                          padding: const EdgeInsets.all(10),
                          height: 47,
                          width: 47,
                          child: Image.asset("assets/icons/notifs.png"))
                      : Image.asset("assets/icons/notifs.png"),
                  label: ''),
              BottomNavigationBarItem(
                  icon: (currentindex == 2)
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: kSkyBlue,
                          ),
                          padding: const EdgeInsets.all(10),
                          height: 47,
                          width: 47,
                          child: Image.asset("assets/icons/scan.png"),
                        )
                      : Image.asset("assets/icons/scan.png"),
                  label: ''),
              BottomNavigationBarItem(
                  icon: (currentindex == 3)
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: kBrightSkyBlue,
                          ),
                          padding: const EdgeInsets.all(10),
                          height: 47,
                          width: 47,
                          child: const Icon(
                            Icons.history,
                            color: kViolet,
                          ),
                        )
                      : Image.asset("assets/icons/timer.png"),
                  label: ''),
              BottomNavigationBarItem(
                  icon: (currentindex == 4)
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: kPeach,
                          ),
                          padding: const EdgeInsets.all(10),
                          height: 47,
                          width: 47,
                          child: Image.asset("assets/icons/cart.png"),
                        )
                      : Image.asset("assets/icons/cartbw.png"),
                  label: ''),
            ],
          ),
        ),
      ),
      body: tabs[currentindex],
    );
  }
}
