import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';
import '../../widgets/back_button.dart';
import '../../widgets/elevated_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kWhite,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButtonWidget(
                  path: "/checkout",
                  color: kViolet,
                  buttonBackgroundColor: kMediumGrey,
                ),
                const SizedBox(height: 49),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/billsuccess.png"),
                    const SizedBox(height: 47),
                    const Text(
                      "Payment Success, Yayy!",
                      style: TextStyle(
                        fontSize: 18,
                        color: kVintageBlack,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 11),
                    const Text(
                      "we will send order details and invoice in",
                      style: TextStyle(
                        fontSize: 14,
                        color: kDarkerGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      "your contact no. and registered email",
                      style: TextStyle(
                        fontSize: 14,
                        color: kDarkerGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: kViolet,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Check Details"),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    const SizedBox(height: 39),
                    const CustomElevatedButtonWidget(
                      buttonColor: kViolet,
                      buttonText: "Download invoice",
                      path: "/checkout",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
