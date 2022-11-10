// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/contents.dart';
import '../../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // final int _numPages = 2;
  // final PageController _pageController = PageController(initialPage: 0);
  // final int _currentPage = 0;
  // List<Widget> _buildPageIndicator() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < _numPages; i++) {
  //     list.add(i == _currentPage ? _indicator(true) : _indicator(false));
  //   }
  //   return list;
  // }

  // Widget _indicator(bool isActive) {
  //   return AnimatedContainer(
  //     duration: const Duration(milliseconds: 150),
  //     margin:const  EdgeInsets.symmetric(horizontal: 8.0),
  //     height: 8.0,
  //     width: isActive ? 24.0 : 16.0,
  //     decoration: BoxDecoration(
  //       color: isActive ? Colors.white : const Color(0xFF7B51D3),
  //       borderRadius: const BorderRadius.all(Radius.circular(12)),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightestPink,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(135),
                        child: Image.asset(
                          "assets/images/splash1.png",
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: contents[i].title,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: kVintageBlack,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: kVintageBlack,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child:
                // Row(
                //   children: _buildPageIndicator(),
                // )

                TextButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  context.go("/bottomnav");
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style: const TextStyle(color: kViolet),
                //●
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
