import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widget/box_action.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar_book_details.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarBookDetiles(),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.33,
          child: FeatureBooksListViewItem(
            urlImage: bookmodel.volumeInfo?.imageLinks?.thumbnail ?? "",
          ),
        ),
        SizedBox(height: 40),
        Text(
          bookmodel.volumeInfo!.title!,
          style: Styles.textstyle30.copyWith(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Opacity(
          opacity: .7,
          child: Text(
            bookmodel.volumeInfo!.authors![0],
            style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(height: 6),
        Bookrating(
          count: bookmodel.volumeInfo?.ratingsCount ?? 0,
          rating: bookmodel.volumeInfo?.averageRating ?? 0,
        ),
      ],
    );
  }
}
