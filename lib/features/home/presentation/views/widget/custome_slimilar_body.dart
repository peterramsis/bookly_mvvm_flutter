import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widget/custome_fetured_list_view_similar.dart';
import 'package:flutter/material.dart';

class CustomSimilarBody extends StatelessWidget {
  const CustomSimilarBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height *.04,
          ),
          const Text("You can also like" , style: Styles.textStyle16,),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: height * .27,
            child: const CustomListSimilarView(),
          )
        ],
      ),
    );
  }
}
