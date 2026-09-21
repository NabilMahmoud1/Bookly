import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [CustomAppBarBookDetiles()]),
    );
  }
}
