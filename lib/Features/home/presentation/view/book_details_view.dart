import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/presentation/manager/details_book_cubits/details_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_deteils_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetilesView extends StatefulWidget {
  const BookDetilesView({super.key, required this.bookmodel});

  final Bookmodel bookmodel;

  @override
  State<BookDetilesView> createState() => _BookDetilesViewState();
}

class _BookDetilesViewState extends State<BookDetilesView> {
  @override
  void initState() {
    super.initState();

    final categories = widget.bookmodel.volumeInfo?.categories;

    if (categories != null && categories.isNotEmpty) {
      BlocProvider.of<DetailsBookCubit>(
        context,
      ).getsimilerebooks(catagray: categories[0]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetilesViewBody(bookmodel: widget.bookmodel)),
    );
  }
}
