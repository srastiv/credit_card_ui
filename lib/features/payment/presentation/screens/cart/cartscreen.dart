import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/colors.dart';
import '../../widgets/elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 8),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: kMediumGrey,
        ),
        child: TextButton(
          onPressed: () {
            context.go("/bottomnav");
          },
          child: const Icon(Icons.arrow_back_ios, color: kOrange),
        ),
      ),
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 54),
                const Text(
                  "Your Cart 👍🏻",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 34),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 18,
                    );
                  },
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return Card(
                      elevation: 0,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        tileColor: kMediumGrey,
                        contentPadding: const EdgeInsets.all(13),
                        leading: SizedBox(
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/images/bottle.png"),
                        ),
                        title: const Text(
                          "Lauren's",
                          style: TextStyle(
                            color: kDarkerGrey,
                            fontSize: 10,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Orange Juice",
                              style: TextStyle(
                                color: kVintageBlack,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "₹129",
                                  style: TextStyle(
                                      color: kOrange,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  width: 67,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: kWhite,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove,
                                            size: 12,
                                            color: kOrange,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "2",
                                        style: TextStyle(
                                            fontSize: 10, color: kVintageBlack),
                                      ),
                                      SizedBox(
                                        width: 20,
                                        child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            size: 12,
                                            color: kOrange,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Total",
                      style: TextStyle(
                        color: kVintageBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹1,527",
                      style: TextStyle(
                          color: kOrange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                const CustomElevatedButtonWidget(
                  buttonText: "Proceed to checkout",
                  buttonColor: kOrange,
                  path: "/checkout",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
