import 'package:bookly/Features/home/presentation/view/widget/book_details_section.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_similar_section.dart';
import 'package:bookly/Features/home/presentation/view/widget/box_action.dart';

import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key});

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
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 45)),
                BookActions(),
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
