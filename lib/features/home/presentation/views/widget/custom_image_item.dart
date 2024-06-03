import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      width: 150,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Image.asset(
          AssetsData.imageTest,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
