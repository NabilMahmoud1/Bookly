import 'package:bookly/Features/home/presentation/manager/details_book_cubits/details_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:bookly/core/errors/Custom_error_widget.dart';
import 'package:bookly/core/utils/widgets/Custom_circle_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBookCubit, DetailsBookState>(
      builder: (context, state) {
        if (state is DetailsBooksuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FeatureBooksListViewItem(
                  urlImage:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                );
              },
            ),
          );
        } else if (state is DetailsBookfailure) {
          return CustomErrorWidget(errormessage: state.errmessage);
        } else {
          return PremiumCircularIndicator();
        }
      },
    );
  }
}
