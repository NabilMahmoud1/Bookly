import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:bookly/Features/search/presentation/views/widget/custom_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(height: 30),
          Text("Search Result", style: Styles.textstyle18),
          SizedBox(height: 10),
          Expanded(child: CustomSearchListViev()),
        ],
      ),
    );
  }
}

class CustomSearchListViev extends StatelessWidget {
  const CustomSearchListViev({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
