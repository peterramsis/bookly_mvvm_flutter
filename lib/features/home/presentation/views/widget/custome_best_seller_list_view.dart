import 'package:bookly/features/home/presentation/views/widget/custom_best_seller_item.dart';
import 'package:flutter/material.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index){
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,

          ),
          child: CustomBestSellerItem(),
        );
      } , itemCount: 10,),
    );
  }
}
