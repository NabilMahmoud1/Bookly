import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [CustomAppBar()]));
  }
}
