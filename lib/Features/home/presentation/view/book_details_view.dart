import 'package:bookly/Features/home/presentation/view/widget/book_deteils_view_body.dart';
import 'package:flutter/material.dart';

class BookDetilesView extends StatelessWidget {
  const BookDetilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetilesViewBody()));
  }
}
