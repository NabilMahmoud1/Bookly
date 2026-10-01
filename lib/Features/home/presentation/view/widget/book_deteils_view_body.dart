import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_details_section.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_similar_section.dart';
import 'package:bookly/Features/home/presentation/view/widget/box_action.dart';

import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                BookDetailsSection(bookmodel: bookmodel),
                Expanded(child: SizedBox(height: 45)),
                BookActions(bookmodel: bookmodel),
                SizedBox(height: 45),
                BookSimilarSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
