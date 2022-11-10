import 'package:flutter/material.dart';
import 'package:payment_ui/features/payment/presentation/constants/colors.dart';

class PaymentOptionsOverlayWidget extends StatelessWidget {
  const PaymentOptionsOverlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      decoration: const BoxDecoration(
        color: kMediumGrey,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 69,
            width: 161,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kGreen,
                elevation: 0,
                shadowColor: kGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/icons/crediticon.png"),
                  const Text(
                    " Credit Card",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 69,
            width: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kMediumGrey,
                elevation: 0,
                shadowColor: kMediumGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/icons/apple.png"),
                  const Text(
                    "Apple Pay",
                    style: TextStyle(
                      color: kVintageBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
