import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/back_button.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: kSkinColor,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/glassbottle.png',
            ),
          ),
          const Positioned(
            top: 69,
            left: 25,
            child: CustomBackButtonWidget(
              path: "/bottomnav",
              color: kViolet,
              buttonBackgroundColor: kLightestSkinColor,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/scannerFrame.png',
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 82,
          width: 292,
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, -7),
                  color: Color.fromARGB(255, 173, 108, 72),
                  spreadRadius: 0,
                  blurRadius: 107),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 53,
                  width: 53,
                  child: Image.asset(
                    'assets/images/bottle.png',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Lauren's",
                    style: TextStyle(
                        color: kDarkerGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text("Orange Juice",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(),
              Container(
                margin: const EdgeInsets.all(10),
                height: 45,
                width: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: kViolet,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                  ),
                  child: SizedBox(
                    height: 22,
                    width: 22,
                    child: Image.asset(
                      "assets/icons/plus.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
