import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/custome_best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widget/featured_list_view.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBar()),
            SliverToBoxAdapter(child: FeaturedListView()),
            SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Best seller",
                    style: Styles.textStyle30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomBestSellerListView()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
