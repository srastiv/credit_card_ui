import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/textstyles.dart';
import 'textfield.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Card Number",
            style: kCheckOutStyle,
          ),
          const SizedBox(height: 3),
          CustomTextFieldWidget(
            width: 335,
            text: "5261   4141   0151   8472",
            suffixicon: SizedBox(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/masterlogo.png"),
                  const SizedBox(
                    width: 34,
                  ),
                  Image.asset("assets/icons/creditcardicon.png"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Card Holder Name",
            style: kCheckOutStyle,
          ),
          const SizedBox(height: 3),
          const CustomTextFieldWidget(
            width: 335,
            text: "Christie Doe",
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Expiry Date",
                    style: kCheckOutStyle,
                  ),
                  SizedBox(height: 3),
                  CustomTextFieldWidget(
                    width: 156,
                    text: "06 / 2024",
                  ),
                ],
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const Text(
                        "CVV/CVC",
                        style: kCheckOutStyle,
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 18,
                        child: CircleAvatar(
                          backgroundColor: kLightGreen,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.question_mark,
                              size: 12,
                              color: kGreen,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  const CustomTextFieldWidget(
                    width: 151,
                    text: "915",
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
