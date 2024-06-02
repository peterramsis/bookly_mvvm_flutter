import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/splash/presentation/views/widget/book_rating.dart';
import 'package:flutter/material.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BookRating()
      ],
    );
  }
}
