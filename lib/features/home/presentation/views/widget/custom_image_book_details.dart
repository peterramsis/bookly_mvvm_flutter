import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomImageBookDetails extends StatelessWidget {
  const CustomImageBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.9 / 4,
        child: Image.asset(
          AssetsData.imageTest,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
