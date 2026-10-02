import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final Bookmodel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoute.bookdetiles, extra: bookModel);
      },
      child: SizedBox(
        height: 150,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Card(
                    elevation: 6,
                    shadowColor: const Color.fromARGB(255, 232, 230, 230),

                    child: FeatureBooksListViewItem(
                      urlImage:
                          bookModel.volumeInfo?.imageLinks?.thumbnail ??
                          'https://via.placeholder.com/150',
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(
                            bookModel.volumeInfo?.title ?? "no title",
                            style: Styles.textstyle20.copyWith(
                              fontFamily: KGtSectrafine,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          bookModel.volumeInfo?.authors?.join(', ') ??
                              'Unknown Author',
                          style: Styles.textstyle14.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Text("Free", style: Styles.textstyle20),
                            Spacer(),
                            Bookrating(
                              count: bookModel.volumeInfo?.averageRating ?? 0,
                              rating: bookModel.volumeInfo?.ratingsCount ?? 0,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: 80,
              indent: 120,

              height: 2,

              thickness: .5,
              color: const Color.fromARGB(136, 108, 131, 143),
            ),
          ],
        ),
      ),
    );
  }
}
