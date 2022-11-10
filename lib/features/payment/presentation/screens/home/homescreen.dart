import 'package:flutter/material.dart';

import '../../../data/models/homescreen_icons.dart';
import '../../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello 👋🏻",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Christie Doe",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      height: 66.91,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/christie.png",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  "Your Insights",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 17),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: kGrey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 176,
                      width: 158,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 20),
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: homeScreenIcons[index].color),
                            child: Center(
                              child: Image.asset(homeScreenIcons[index].image),
                            ),
                          ),
                          Text(
                            homeScreenIcons[index].text,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            homeScreenIcons[index].numbers,
                            style: const TextStyle(
                                color: kDarkerGrey,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Explore More",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
                SizedBox(
                  height: 130,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 25,
                      );
                    },
                    itemBuilder: ((context, index) {
                      return SizedBox(
                        height: 127,
                        width: 127,
                        child: Image.asset("assets/images/splash1.png"),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
