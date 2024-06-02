import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_rating_widget.dart';
import 'package:bookly/features/splash/presentation/views/widget/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Image.asset(AssetsData.imageTest , fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text("Harry Potter and the Goblet of Fire" , style: Styles.textStyle20, softWrap: true , overflow: TextOverflow.ellipsis , maxLines: 3),
                ),
                const SizedBox(
                  height: 9,
                ),
                const Text("J.K. Rowling" , style: Styles.textStyle14,),
                const SizedBox(
                  height: 9,
                ),


                const Row(
                  children: [
                    Text("19.99 €" , style: Styles.textStyle20,),
                    Spacer(),
                    BookRating()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
