import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      shadowColor: const Color.fromARGB(255, 147, 129, 129),

      child: SizedBox(
        height: 200,
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
      ),
    );
  }
}
