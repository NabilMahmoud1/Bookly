import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: CustomAppBar()),

          FeatureBooksListView(),
          SizedBox(height: 50),
          Text("Best Seller", style: Styles.styletext18),
        ],
      ),
    );
  }
}
