import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widget/box_action.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar_book_details.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarBookDetiles(),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.33,
          child: FeatureBooksListViewItem(
            urlImage: 'https://picsum.photos/400/600',
          ),
        ),
        SizedBox(height: 40),
        Text("The Jungle Book", style: Styles.textstyle30.copyWith()),
        SizedBox(height: 8),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(height: 6),
        Bookrating(),
      ],
    );
  }
}
