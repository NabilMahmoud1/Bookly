import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(child: CustomAppBar()),

                FeatureBooksListView(),

                const SizedBox(height: 40),

                Text("Best Seller", style: Styles.textstyle18),

                // المسافة بين Best Seller والـ List
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),

        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
