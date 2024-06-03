import 'package:bookly/features/home/presentation/views/widget/custom_best_seller_item.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_item.dart';
import 'package:flutter/material.dart';

class CustomListSimilarView extends StatelessWidget {
  const CustomListSimilarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomImageItem(),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
