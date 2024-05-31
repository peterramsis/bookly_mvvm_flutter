import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.logo , height: 18),
        const Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded , size: 22,))
      ],
    );
  }
}
