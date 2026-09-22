import 'package:bookly/Features/home/presentation/view/widget/similar_book_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookSimilarSection extends StatelessWidget {
  const BookSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You Can Also Like",
          style: Styles.textstyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 25),
        SimilarBookListView(),
      ],
    );
  }
}
