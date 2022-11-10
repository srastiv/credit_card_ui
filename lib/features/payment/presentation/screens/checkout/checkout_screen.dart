import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/back_button.dart';
import '../../widgets/elevated_button.dart';
import 'widgets/creditcard.dart';
import 'widgets/payment_option_overlay.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 22, left: 22, right: 22),
            height: 253,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 7),
                  blurRadius: 27,
                  spreadRadius: 0,
                  color: kDarkestGreen,
                ),
              ],
              color: kWhite,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Container(
                padding: const EdgeInsets.only(right: 290, top: 20),
                child: const CustomBackButtonWidget(
                    path: "/bottomnav",
                    color: kGreen,
                    buttonBackgroundColor: kMediumGrey),
              ),
              const SizedBox(
                height: 39,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Checkout 💳",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 70),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "₹ 1,527",
                        style: TextStyle(
                          fontSize: 20,
                          color: kGreen,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Including GST(18%)",
                        style: TextStyle(
                          color: kDarkerGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const PaymentOptionsOverlayWidget(),
              const SizedBox(height: 32),
              const CreditCardWidget(),
              const SizedBox(height: 36),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "We will send you an order details to your",
                    style: TextStyle(
                      fontSize: 12,
                      color: kDarkerGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "email after the successfull payment",
                    style: TextStyle(
                      fontSize: 12,
                      color: kDarkerGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 17),
                  CustomElevatedButtonWidget(
                    buttonColor: kGreen,
                    buttonText: "🔒 Pay for the order",
                    path: "/successscreen",
                    decor: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 10,
                          color: kGreen,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
