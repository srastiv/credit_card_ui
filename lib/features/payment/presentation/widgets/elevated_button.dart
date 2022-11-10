import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
    required this.path,
    this.decor,
  }) : super(key: key);
  final Color buttonColor;
  final String buttonText;
  final String path;
  final Decoration? decor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 335,
      child: Container(
        decoration: decor,
        child: ElevatedButton(
          onPressed: () {
            context.go(path);
          },
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
