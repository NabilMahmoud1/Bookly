import 'package:bookly/Features/home/presentation/manager/feature%20books%20cubit/feature_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/feature_books_list_view_items.dart';
import 'package:bookly/core/errors/Custom_error_widget.dart';
import 'package:bookly/core/errors/custom_circle_indector.dart';
import 'package:bookly/core/utils/widgets/Custom_circle_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBookssucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
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
        } else if (state is FeatureBooksfailure) {
          return CustomErrorWidget(errormessage: state.errormessage);
        } else {
          return PremiumCircularIndicator();
        }
      },
    );
  }
}
