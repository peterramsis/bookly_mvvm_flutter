import 'package:bookly/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_information.dart';
import 'package:bookly/features/home/presentation/views/widget/custome_slimilar_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomBookDetailsAppBar(),
                    CustomBookInformation(),
                    CustomSimilarBody()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
