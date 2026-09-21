import 'package:bookly/Features/home/presentation/view/widget/book_action.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar_book_details.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomAppBarBookDetiles(),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
            child: FeatureBooksListViewItem(),
          ),
          SizedBox(height: 20),
          Text("The Jungle Book", style: Styles.textstyle30.copyWith()),
          SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(height: 6),
          Bookrating(),
          SizedBox(height: 27),
          BookActions(),
        ],
      ),
    );
  }
}
