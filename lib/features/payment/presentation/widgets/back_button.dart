import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/colors.dart';

class CustomBackButtonWidget extends StatelessWidget {
  const CustomBackButtonWidget({
    Key? key,
    required this.path,
    required this.color,
    required this.buttonBackgroundColor,
  }) : super(key: key);
  final String path;
  final Color color;
  final Color buttonBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: kLightestSkinColor,
      ),
      child: TextButton(
        onPressed: () {
          context.go(path);
        },
        child: Icon(Icons.arrow_back_ios, color: color),
      ),
    );
  }
}
