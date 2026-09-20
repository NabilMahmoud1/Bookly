import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_item.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
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
          Text("Best Seller", style: Styles.textstyle18),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

// / Thin, the least thick.
//   static const FontWeight w100 = FontWeight(100);

//   /// Extra-light.
//   static const FontWeight w200 = FontWeight(200);

//   /// Light.
//   static const FontWeight w300 = FontWeight(300);

//   /// Normal / regular / plain.
//   static const FontWeight w400 = FontWeight(400);

//   /// Medium.
//   static const FontWeight w500 = FontWeight(500);

//   /// Semi-bold.
//   static const FontWeight w600 = FontWeight(600);

//   /// Bold.
//   static const FontWeight w700 = FontWeight(700);

//   /// Extra-bold.
//   static const FontWeight w800 = FontWeight(800);

//   /// Black, the most thick.
//   static const FontWeight w900 = FontWeight(900);

//   /// The default font weight.
//   static const FontWeight normal = w400;

//   /// A commonly used font weight that is heavier than normal.
//   static const FontWeight bold = w700;
