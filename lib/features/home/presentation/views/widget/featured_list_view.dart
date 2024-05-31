import 'package:bookly/features/home/presentation/views/widget/custom_image_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(itemBuilder: (context , index){
         return const CustomImageItem();
      }, itemCount: 10 , scrollDirection: Axis.horizontal, padding: EdgeInsets.zero , physics: const BouncingScrollPhysics(),),
    );
  }
}
