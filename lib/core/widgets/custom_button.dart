import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius,
      required this.backgroundColor,
      this.height = 48,
      required this.text,
      required this.colorText});
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final double height;
  final String text;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(10))),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(color: colorText),
        ),
      ),
    );
  }
}
