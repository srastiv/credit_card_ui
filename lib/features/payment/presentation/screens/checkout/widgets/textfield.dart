import 'package:flutter/material.dart';
import 'package:payment_ui/features/payment/presentation/constants/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final int? numberOfLetters;
  final String text;
  final Widget? suffixicon;
  final double width;
  final Widget? icon;

  const CustomTextFieldWidget({
    Key? key,
    this.icon,
    required this.width,
    required this.text,
    this.suffixicon,
    this.numberOfLetters,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: width,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLength: numberOfLetters,
        decoration: InputDecoration(
          suffixIcon: suffixicon,
          isDense: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kGrey),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              borderSide: BorderSide(color: kGrey)),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: kMediumGrey,
          hintText: text,
        ),
      ),
    );
  }
}
