import 'package:bookly/Features/home/presentation/view/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetilesView extends StatelessWidget {
  const BookDetilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BookDetilesViewBody());
  }
}
