import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FeatureBooksListViewItem(
            urlImage: 'https://picsum.photos/400/600',
          );
        },
      ),
    );
  }
}
