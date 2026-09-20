import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatureBooksListViewItem extends StatelessWidget {
  const FeatureBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: const Color.fromARGB(255, 232, 230, 230),

      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(AssetsData.KImages),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
