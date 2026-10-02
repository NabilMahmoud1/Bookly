import 'package:bookly/Features/home/presentation/manager/Best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:bookly/core/errors/Custom_error_widget.dart';
import 'package:bookly/core/utils/widgets/Custom_circle_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellersuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is BestSellerfailure) {
          return Center(
            child: CustomErrorWidget(errormessage: state.errMessages),
          );
        } else {
          return Center(child: PremiumCircularIndicator());
        }
      },
    );
  }
}
