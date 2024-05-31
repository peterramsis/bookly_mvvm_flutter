import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 50,
          bottom: 20,
          right: 20,
          left: 20
        ),
        child: Column(
          children: [
            CustomAppBar(),
            FeaturedListView()
          ],
        ),
      ),
    );
  }
}
