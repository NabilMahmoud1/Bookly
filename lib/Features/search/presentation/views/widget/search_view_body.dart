import 'package:bookly/Features/home/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:bookly/Features/search/presentation/views/widget/custom_text_field.dart';
import 'package:bookly/core/errors/Custom_error_widget.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/Custom_circle_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: controller,

            onsubmitt: (data) {
              BlocProvider.of<SearchCubit>(
                context,
              ).getsearchebooks(textsearch: data);
            },

            ontap: () {
              if (controller.text.isNotEmpty) {
                BlocProvider.of<SearchCubit>(
                  context,
                ).getsearchebooks(textsearch: controller.text);
              }
            },
          ),

          SizedBox(height: 30),

          Text("Search Result", style: Styles.textstyle18),

          SizedBox(height: 10),

          Expanded(child: CustomSearchListViev()),
        ],
      ),
    );
  }
}

class CustomSearchListViev extends StatelessWidget {
  const CustomSearchListViev({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is Searchsuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is Searchfailure) {
          return CustomErrorWidget(errormessage: state.errmessage);
        } else {
          return Center(child: PremiumCircularIndicator());
        }
      },
    );
  }
}
