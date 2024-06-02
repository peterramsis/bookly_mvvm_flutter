import 'package:bookly/core/utils/style.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_book_details.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_rating_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return   Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5
          ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomBookDetailsAppBar(),
              Padding(padding: EdgeInsets.symmetric(
                horizontal: width *.17,
              ) ,child: SizedBox(
                  width: width * .4,
                  child: const CustomImageBookDetails()),),
              SizedBox(
                   height: height *.05,
              ),
              const Text("The Jungle Book" , style: Styles.textStyle30,),
              SizedBox(
                height: height * .01,
              ),
              const Opacity( opacity: .4,child:  Text("Rudyard Kipling" , style: Styles.textStyle18,)),
              SizedBox(
                height: height * .02,
              ),
              const CustomRatingWidget(),
              SizedBox(
                height: height * .02,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        ),
                        backgroundColor: Colors.white,
                        text: "19.99€",
                        colorText: Colors.black87,
                      ),
                    ),
                    Expanded(child: CustomButton(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      ),
                      backgroundColor: Color(0xffef8262),
                      text: "Free preview",
                      colorText: Colors.white,
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height *.04,
              ),
              const Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("You can also like" , style: Styles.textStyle14,),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

