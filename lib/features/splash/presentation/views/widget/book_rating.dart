import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Icon(Icons.star , color: Colors.yellow,),
        Text("4.8 (2390)" , style: Styles.textStyle18,)
      ],
    );
  }
}
